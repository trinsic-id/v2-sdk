document.addEventListener("DOMContentLoaded", function (event) {
    activateSavedTabs();
    setupTabSync();
});

// Gets saved tab list from localStorage
function getSavedTabs() {
    return JSON.parse(localStorage.getItem("trinsic.tabs") || "[]");
}

// Saves a selected tab to local storage
function saveTabPreference(tabName) {
    // The way this works is that we create a priority list of all tabs
    // The lower indexes are higher-priority
    // For example, we might already have a list of: ["C#", "Python", "Go"]
    // When we load the page, we'll activate C# tabs
    // If we then click a Python tab, it'll swap to ["Python", "C#", "Go"]
    // If we click Java, it'll then turn to ["Java", "Python", "C#", "Go"] 
    let tabs = getSavedTabs();
    tabs = [...new Set([tabName, ...tabs])]

    localStorage.setItem("trinsic.tabs", JSON.stringify(tabs));
}

// Activate the tabs saved in localstorage
// That is -- if the user last clicked "C#", then we should activate
// the C# tab on pageload.
function activateSavedTabs() {
    const savedTabs = getSavedTabs();
    if(savedTabs.length === 0) return;

    const startY = window.scrollY;

    // Find all sets of tabs
    const tabHosts = document.querySelectorAll(".tabbed-set");
    for(const host of tabHosts) {
        const hostNumber = host.getAttribute("data-tabs");
        const labels = document.querySelectorAll(`.tabbed-set[data-tabs='${hostNumber}'] > .tabbed-labels > label`);

        let smallest_index = -1;
        let smallest_label = null;

        // For the labels within this tab set, find the label
        // which appears EARLIEST in `savedTabs`.
        for(const label of labels) {
            let idx = savedTabs.indexOf(label.textContent);
            if(idx === -1) continue;
            if(idx < smallest_index || smallest_index === -1) {
                smallest_index = idx;
                smallest_label = label;
            }
        }

        // Click the chosen tab, if any
        if(smallest_index != -1) {
            smallest_label.click();
        }
    }

    window.scrollTo(0, startY);
}

// Add click listeners to tabs to synchronize across the page
// IE, if a user clicks "C#", then all tabs with a C# option should switch to C#
// NOTE: This explicitly does NOT apply to the "Sample/Request/Response" tabs, as
// we don't want those to sync.
function setupTabSync() {
    // Find all tabs
    const tabs = document.querySelectorAll(".tabbed-set > input");
    for (const tab of tabs) {
        // Determine if this is a (Sample/Request/Response) tab set.
        // If so, we DON'T want those tabs to be synced.
        // (Due to the difficulties of working with our markdown toolset, we can identify this by seeing if there's a preceding
        //  <div class='proto-method-tabs-marker'> element before the tab set.)
        const tabHost = tab.parentElement;
        const precedingElement = tabHost.previousElementSibling;
        if (precedingElement != null && precedingElement.classList.contains("proto-method-tabs-marker")) {
            continue;
        }

        tab.addEventListener("click", (evt) => {
            // If the event doesn't come from an actual click, ignore it
            // Otherwise, we'll recursively be calling click()
            if (!evt.isTrusted) {
                return;
            }

            console.log(evt);

            // Find the label we clicked on
            const current = document.querySelector(`label[for=${tab.id}]`);

            // Determine its position before we activate all linked tabs
            const startPos = current.getBoundingClientRect().top

            // Find all labels
            const labels = document.querySelectorAll('.tabbed-set > label, .tabbed-alternate > .tabbed-labels > label')
            for (const label of labels) {
                // Click any tabs which have the same label as the one we just clicked
                if (label.innerHTML === current.innerHTML) {
                    document.querySelector(`input[id=${label.getAttribute('for')}]`).click();
                }
            }

            // Determine how much the window scrolled as a result of all the tabs we just clicked
            const delta = (current.getBoundingClientRect().top) - startPos
            window.scrollBy(0, delta)
            console.log("Scrolled");

            // Save tab preference for future pageloads
            saveTabPreference(current.textContent);
        })
    }
}