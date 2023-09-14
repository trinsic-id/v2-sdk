import {
    OidcClient,
    OidcClientSettings,
    WebStorageStateStore,
} from "oidc-client-ts";

export interface MobileDetect {
    isMobile: boolean;
    isDesktop: boolean;
    isAndroid: boolean;
    isIos: boolean;
    isSSR: boolean;
}

const getMobileDetect = (userAgent: string) => {
    const isAndroid = (): boolean => Boolean(userAgent.match(/Android/i));
    const isIos = (): boolean => Boolean(userAgent.match(/iPhone|iPad|iPod/i));
    const isOpera = (): boolean => Boolean(userAgent.match(/Opera Mini/i));
    const isWindows = (): boolean => Boolean(userAgent.match(/IEMobile/i));
    const isSSR = (): boolean => Boolean(userAgent.match(/SSR/i));

    const isMobile = (): boolean =>
        Boolean(isAndroid() || isIos() || isOpera() || isWindows());
    const isDesktop = (): boolean => Boolean(!isMobile() && !isSSR());
    return {
        isMobile,
        isDesktop,
        isAndroid,
        isIos,
        isSSR,
    };
};

const CSSString = `
.modal__overlay {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0);
    display: flex;
    justify-content: center;
    align-items: center
  }

  .modal__header {
    display: flex;
    justify-content: space-between;
    align-items: center
  }

  .modal__title {
    margin-top: 0;
    margin-bottom: 0;
    font-weight: 600;
    font-size: 1.25rem;
    line-height: 1.25;
    color: #00449e;
    box-sizing: border-box
  }

  .modal__close {
    background: transparent;
    border: 0
  }

  .modal__header .modal__close:before {
    content: "✕"
  }

  .modal__content {
    margin-top: 2rem;
    margin-bottom: 2rem;
    line-height: 1.5;
    color: #000c
  }

  .modal__btn {
    font-size: .875rem;
    padding: .5rem 1rem;
    background-color: #e6e6e6;
    color: #000c;
    border-radius: .25rem;
    border-style: none;
    border-width: 0;
    cursor: pointer;
    -webkit-appearance: button;
    text-transform: none;
    overflow: visible;
    line-height: 1.15;
    margin: 0;
    will-change: transform;
    -moz-osx-font-smoothing: grayscale;
    backface-visibility: hidden;
    transform: translateZ(0);
    transition: transform .25s ease-out
  }

  .modal__btn:focus,
  .modal__btn:hover {
    transform: scale(1.05)
  }

  .modal__btn-primary {
    background-color: #00449e;
    color: #fff
  }

  @keyframes mmfadeIn {
    0% {
      opacity: 0
    }

    to {
      opacity: 1
    }
  }

  @keyframes mmfadeOut {
    0% {
      opacity: 1
    }

    to {
      opacity: 0
    }
  }

  @keyframes mmslideIn {
    0% {
      transform: translateY(15%)
    }

    to {
      transform: translateY(0)
    }
  }

  @keyframes mmslideOut {
    0% {
      transform: translateY(0)
    }

    to {
      transform: translateY(-10%)
    }
  }

  .micromodal-slide {
    display: none
  }

  .micromodal-slide.is-open {
    display: block
  }

  .micromodal-slide[aria-hidden=false] .modal__overlay {
    animation: mmfadeIn .3s cubic-bezier(0, 0, .2, 1)
  }

  .micromodal-slide[aria-hidden=false] .modal__container {
    animation: mmslideIn .3s cubic-bezier(0, 0, .2, 1)
  }

  .micromodal-slide[aria-hidden=true] .modal__overlay {
    animation: mmfadeOut .3s cubic-bezier(0, 0, .2, 1)
  }

  .micromodal-slide[aria-hidden=true] .modal__container {
    animation: mmslideOut .3s cubic-bezier(0, 0, .2, 1)
  }

  .micromodal-slide .modal__container,
  .micromodal-slide .modal__overlay {
    will-change: transform
  }


  .fixed {
    position: fixed
  }

  .inset-0 {
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
  }


  .flex {
    display: flex
  }


  .h-\[600px\] {
    height: 600px
  }

  .h-full {
    height: 100%
  }


  .min-h-\[600px\] {
    min-height: 600px
  }

  .place-content-center {
    place-content: center
  }

  .items-center {
    align-items: center
  }

  .justify-center {
    justify-content: center
  }

  .bg-transparent {
    background-color: transparent
  }


  .w-full {
    width: 100%
  }

  .lock-bg {
    overflow-y: hidden;
    overflow-x: hidden;
  }


  `;

import MicroModal from "micromodal";

export class ConnectClient {
    public baseUrl: string;
    public redirectUri?: string;

    public oidcConfig: OidcClientSettings;
    oidcClient?: OidcClient;
    popupWindow?: Window | null;

    constructor(
        connectUrl: string = "https://connect.trinsic.cloud",
        redirectUri?: string
    ) {
        this.baseUrl = connectUrl;
        this.redirectUri = redirectUri;

        this.oidcConfig = {
            authority: this.baseUrl,
            client_id: "http://localhost:8080/",
            redirect_uri: this.redirectUri ?? "http://localhost:8080/",

            response_type: "code",
            scope: "openid",

            extraQueryParams: {
                "trinsic:ecosystem": "",
                "trinsic:schema": "",
                "trinsic:mode": "popup",
            },
            stateStore: new WebStorageStateStore({
                store: window.localStorage,
            }),
        };

        MicroModal.init();

        const style = document.createElement("style");
        style.id = "trinsic-connect-style";
        style.textContent = CSSString;
        document.head.appendChild(style);

        window.addEventListener("message", async (e) => {
            this.popupWindow?.close();
            var response = await this.oidcClient?.processSigninResponse(
                e.data.url
            );
            this.processCallback(response);
        });
    }

    public detectMobile = (): MobileDetect => {
        const mobileDetect = getMobileDetect(navigator.userAgent);
        return {
            isMobile: mobileDetect.isMobile(),
            isDesktop: mobileDetect.isDesktop(),
            isAndroid: mobileDetect.isAndroid(),
            isIos: mobileDetect.isIos(),
            isSSR: mobileDetect.isSSR(),
        };
    };

    public isConnectModalOpen = () => {
        const trinsicConnect = document.getElementById("trinsic-connect");
        return trinsicConnect !== null;
    };

    public removeModal = () => {
        const trinsicConnect = document.getElementById("trinsic-connect");
        trinsicConnect?.remove();
    };

    public showModal = (clientToken: string) => {
        this.removeModal();

        const mobileDetect = this.detectMobile();

        const modal = document.createElement("div");
        modal.id = "trinsic-connect";
        modal.ariaHidden = "true";
        modal.className = "micromodal-slide";

        const bgOverlay = document.createElement("div");
        bgOverlay.tabIndex = -1;
        // bgOverlay.setAttribute("data-micromodal-close", "true");
        bgOverlay.className = "fixed inset-0 flex items-center justify-center";

        const modalContainer = document.createElement("div");
        //modalContainer.role = "dialog";
        modalContainer.ariaModal = "true";

        modalContainer.className = mobileDetect.isDesktop
            ? "modal__container h-[600px] w-[400px]"
            : "modal__container h-full min-h-[600px] w-full";

        const iframe = document.createElement("iframe");
        iframe.className = "h-full w-full bg-transparent";
        iframe.allow = "camera *; microphone *; display-capture *";

        let redirectUri = "";
        if (this.redirectUri) {
            redirectUri = `&redirect_uri=${encodeURIComponent(
                this.redirectUri
            )}`;
        }

        iframe.src = `${this.baseUrl}/connect/verify?clientToken=${clientToken}${redirectUri}`;

        modalContainer.append(iframe);
        bgOverlay.append(modalContainer);
        modal.append(bgOverlay);
        document.body.classList.add("lock-bg");
        document.body.append(modal);
        MicroModal.show("trinsic-connect");
    };

    public hideModal = () => {
        try {
            MicroModal.close("trinsic-connect");
        } catch (err) {}
        document.body.classList.remove("lock-bg");
        this.removeModal();
    };

    public async identityVerification(clientToken: string): Promise<any> {
        this.showModal(clientToken);

        var result = new Promise((resolve, reject) => {
            window.addEventListener(
                "message",
                (event) => {
                    console.debug("event data", event.data);
                    if (event.data?.success === true) {
                        this.hideModal();
                        resolve(event.data);
                    }
                    if (event.data?.success === false) {
                        this.hideModal();
                        reject(event.data);
                    }
                },
                false
            );
        });
        return result;
    }

    processCallback = (response: any) => {};

    public async requestVerifiableCredential(
        request: IVerifiableCredentialRequest
    ): Promise<any> {
        if (!request || !request.ecosystem || !request.schema) {
            throw new Error("ecosystem and schema are required");
        }

        const settings = { ...this.oidcConfig };
        settings.extraQueryParams!["trinsic:ecosystem"] = request.ecosystem;
        settings.extraQueryParams!["trinsic:schema"] = request.schema;

        this.oidcClient = new OidcClient(settings);
        var authRequest = await this.oidcClient.createSigninRequest({});

        this.popupWindow = this.openPopup(authRequest.url);

        var result = new Promise((resolve, reject) => {
            this.processCallback = resolve;
        });

        return result;
    }

    openPopup = (url: string) => {
        // Calculate the position
        const w = 600;
        const h = 800;
        const left = window.screen.width / 2 - w / 2;
        const top = window.screen.height / 2 - h / 2;

        // Open the window
        const popup = window.open(
            url,
            "oidc-popup",
            `toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=${w}, height=${h}, top=${top}, left=${left}`
        );

        // Check if the popup was blocked
        if (popup === null || typeof popup === "undefined") {
            alert("Popup blocked, please enable popups and try again");
        }

        return popup;
    };
}

export interface IVerifiableCredentialRequest {
    ecosystem: string;
    schema: string;
    verificationTemplateId?: string;
}
