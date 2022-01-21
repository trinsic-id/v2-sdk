# Documentation

## `public enum ConfirmationMethod implements com.google.protobuf.ProtocolMessageEnum`

<pre> Confirmation method type for two-factor workflows </pre>

Protobuf enum {@code services.account.v1.ConfirmationMethod}

## `None(0),`

<pre> No confirmation required </pre>

`None = 0;`

## `Email(1),`

<pre> Email confirmation required </pre>

`Email = 1;`

## `Sms(2),`

<pre> SMS confirmation required </pre>

`Sms = 2;`

## `ConnectedDevice(3),`

<pre> Confirmation from a connected device is required </pre>

`ConnectedDevice = 3;`

## `Other(10), UNRECOGNIZED(-1),`

<pre> Indicates third-party method of confirmation is required </pre>

`Other = 10;`

## `public static final int None_VALUE = 0`

<pre> No confirmation required </pre>

`None = 0;`

## `public static final int Email_VALUE = 1`

<pre> Email confirmation required </pre>

`Email = 1;`

## `public static final int Sms_VALUE = 2`

<pre> SMS confirmation required </pre>

`Sms = 2;`

## `public static final int ConnectedDevice_VALUE = 3`

<pre> Confirmation from a connected device is required </pre>

`ConnectedDevice = 3;`

## `public static final int Other_VALUE = 10`

<pre> Indicates third-party method of confirmation is required </pre>

`Other = 10;`

## `@java.lang.Deprecated public static ConfirmationMethod valueOf(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.
 * **Deprecated**

## `public static ConfirmationMethod forNumber(int value)`

 * **Parameters:** `value` — The numeric wire value of the corresponding enum entry.
 * **Returns:** The enum associated with the given numeric wire value.

## `boolean hasDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** Whether the details field is set.

## `trinsic.services.account.v1.AccountOuterClass.AccountDetails getDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** The details.

## `trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder getDetailsOrBuilder()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `java.lang.String getInvitationCode()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** The invitationCode.

## `com.google.protobuf.ByteString getInvitationCodeBytes()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** The bytes for invitationCode.

## `public static final class SignInRequest extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Request for creating new account </pre>

Protobuf type {@code services.account.v1.SignInRequest}

## `@java.lang.Override public boolean hasDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** Whether the details field is set.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.AccountDetails getDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** The details.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder getDetailsOrBuilder()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `@java.lang.Override public java.lang.String getInvitationCode()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** The invitationCode.

## `@java.lang.Override public com.google.protobuf.ByteString getInvitationCodeBytes()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** The bytes for invitationCode.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Request for creating new account </pre>

Protobuf type {@code services.account.v1.SignInRequest}

## `public boolean hasDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** Whether the details field is set.

## `public trinsic.services.account.v1.AccountOuterClass.AccountDetails getDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** The details.

## `public Builder setDetails(trinsic.services.account.v1.AccountOuterClass.AccountDetails value)`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public Builder setDetails( trinsic.services.account.v1.AccountOuterClass.AccountDetails.Builder builderForValue)`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public Builder mergeDetails(trinsic.services.account.v1.AccountOuterClass.AccountDetails value)`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public Builder clearDetails()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public trinsic.services.account.v1.AccountOuterClass.AccountDetails.Builder getDetailsBuilder()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder getDetailsOrBuilder()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.account.v1.AccountOuterClass.AccountDetails, trinsic.services.account.v1.AccountOuterClass.AccountDetails.Builder, trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder> getDetailsFieldBuilder()`

<pre> Account registration details </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public java.lang.String getInvitationCode()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** The invitationCode.

## `public com.google.protobuf.ByteString getInvitationCodeBytes()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** The bytes for invitationCode.

## `public Builder setInvitationCode( java.lang.String value)`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Parameters:** `value` — The invitationCode to set.
 * **Returns:** This builder for chaining.

## `public Builder clearInvitationCode()`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setInvitationCodeBytes( com.google.protobuf.ByteString value)`

<pre> Invitation code associated with this registration This field is optional. </pre>

`string invitation_code = 2;`

 * **Parameters:** `value` — The bytes for invitationCode to set.
 * **Returns:** This builder for chaining.

## `java.lang.String getName()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** The name.

## `com.google.protobuf.ByteString getNameBytes()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** The bytes for name.

## `java.lang.String getEmail()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** The email.

## `com.google.protobuf.ByteString getEmailBytes()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** The bytes for email.

## `java.lang.String getSms()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** The sms.

## `com.google.protobuf.ByteString getSmsBytes()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** The bytes for sms.

## `public static final class AccountDetails extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Account Registration Details </pre>

Protobuf type {@code services.account.v1.AccountDetails}

## `@java.lang.Override public java.lang.String getName()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** The name.

## `@java.lang.Override public com.google.protobuf.ByteString getNameBytes()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** The bytes for name.

## `@java.lang.Override public java.lang.String getEmail()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** The email.

## `@java.lang.Override public com.google.protobuf.ByteString getEmailBytes()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** The bytes for email.

## `@java.lang.Override public java.lang.String getSms()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** The sms.

## `@java.lang.Override public com.google.protobuf.ByteString getSmsBytes()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** The bytes for sms.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Account Registration Details </pre>

Protobuf type {@code services.account.v1.AccountDetails}

## `public java.lang.String getName()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** The name.

## `public com.google.protobuf.ByteString getNameBytes()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** The bytes for name.

## `public Builder setName( java.lang.String value)`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Parameters:** `value` — The name to set.
 * **Returns:** This builder for chaining.

## `public Builder clearName()`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setNameBytes( com.google.protobuf.ByteString value)`

<pre> Account name (optional) </pre>

`string name = 1;`

 * **Parameters:** `value` — The bytes for name to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getEmail()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** The email.

## `public com.google.protobuf.ByteString getEmailBytes()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** The bytes for email.

## `public Builder setEmail( java.lang.String value)`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Parameters:** `value` — The email to set.
 * **Returns:** This builder for chaining.

## `public Builder clearEmail()`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Returns:** This builder for chaining.

## `public Builder setEmailBytes( com.google.protobuf.ByteString value)`

<pre> Email account (required) </pre>

`string email = 2;`

 * **Parameters:** `value` — The bytes for email to set.
 * **Returns:** This builder for chaining.

## `public java.lang.String getSms()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** The sms.

## `public com.google.protobuf.ByteString getSmsBytes()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** The bytes for sms.

## `public Builder setSms( java.lang.String value)`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Parameters:** `value` — The sms to set.
 * **Returns:** This builder for chaining.

## `public Builder clearSms()`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Returns:** This builder for chaining.

## `public Builder setSmsBytes( com.google.protobuf.ByteString value)`

<pre> SMS number including country code (optional) </pre>

`string sms = 3;`

 * **Parameters:** `value` — The bytes for sms to set.
 * **Returns:** This builder for chaining.

## `int getStatusValue()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `int getConfirmationMethodValue()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** The enum numeric value on the wire for confirmationMethod.

## `trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod getConfirmationMethod()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** The confirmationMethod.

## `boolean hasProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

 * **Returns:** Whether the profile field is set.

## `trinsic.services.account.v1.AccountOuterClass.AccountProfile getProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

 * **Returns:** The profile.

## `trinsic.services.account.v1.AccountOuterClass.AccountProfileOrBuilder getProfileOrBuilder()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public static final class SignInResponse extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Response for creating new account This object will indicate if a confirmation code was sent to one of the users two-factor methods like email, SMS, etc. </pre>

Protobuf type {@code services.account.v1.SignInResponse}

## `@java.lang.Override public int getStatusValue()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `@java.lang.Override public int getConfirmationMethodValue()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** The enum numeric value on the wire for confirmationMethod.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod getConfirmationMethod()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** The confirmationMethod.

## `@java.lang.Override public boolean hasProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

 * **Returns:** Whether the profile field is set.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.AccountProfile getProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

 * **Returns:** The profile.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.AccountProfileOrBuilder getProfileOrBuilder()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Response for creating new account This object will indicate if a confirmation code was sent to one of the users two-factor methods like email, SMS, etc. </pre>

Protobuf type {@code services.account.v1.SignInResponse}

## `@java.lang.Override public int getStatusValue()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The enum numeric value on the wire for status.

## `public Builder setStatusValue(int value)`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The enum numeric value on the wire for status to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.common.v1.CommonOuterClass.ResponseStatus getStatus()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** The status.

## `public Builder setStatus(trinsic.services.common.v1.CommonOuterClass.ResponseStatus value)`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Parameters:** `value` — The status to set.
 * **Returns:** This builder for chaining.

## `public Builder clearStatus()`

<pre> The status of the response </pre>

`.services.common.v1.ResponseStatus status = 1;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public int getConfirmationMethodValue()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** The enum numeric value on the wire for confirmationMethod.

## `public Builder setConfirmationMethodValue(int value)`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Parameters:** `value` — The enum numeric value on the wire for confirmationMethod to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod getConfirmationMethod()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** The confirmationMethod.

## `public Builder setConfirmationMethod(trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod value)`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Parameters:** `value` — The confirmationMethod to set.
 * **Returns:** This builder for chaining.

## `public Builder clearConfirmationMethod()`

<pre> Indicates if confirmation of account is required. This settings is configured globally by the server administrator. </pre>

`.services.account.v1.ConfirmationMethod confirmation_method = 3;`

 * **Returns:** This builder for chaining.

## `public boolean hasProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

 * **Returns:** Whether the profile field is set.

## `public trinsic.services.account.v1.AccountOuterClass.AccountProfile getProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

 * **Returns:** The profile.

## `public Builder setProfile(trinsic.services.account.v1.AccountOuterClass.AccountProfile value)`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public Builder setProfile( trinsic.services.account.v1.AccountOuterClass.AccountProfile.Builder builderForValue)`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public Builder mergeProfile(trinsic.services.account.v1.AccountOuterClass.AccountProfile value)`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public Builder clearProfile()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public trinsic.services.account.v1.AccountOuterClass.AccountProfile.Builder getProfileBuilder()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `public trinsic.services.account.v1.AccountOuterClass.AccountProfileOrBuilder getProfileOrBuilder()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.account.v1.AccountOuterClass.AccountProfile, trinsic.services.account.v1.AccountOuterClass.AccountProfile.Builder, trinsic.services.account.v1.AccountOuterClass.AccountProfileOrBuilder> getProfileFieldBuilder()`

<pre> Contains authentication data for use with the current device. This object must be stored in a secure place. It can also be protected with a PIN, but this is optional. See the docs at https://docs.trinsic.id for more information on working with authentication data. </pre>

`.services.account.v1.AccountProfile profile = 4;`

## `java.lang.String getProfileType()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** The profileType.

## `com.google.protobuf.ByteString getProfileTypeBytes()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** The bytes for profileType.

## `com.google.protobuf.ByteString getAuthData()`

<pre> Auth data containg information about the current device access </pre>

`bytes auth_data = 2;`

 * **Returns:** The authData.

## `com.google.protobuf.ByteString getAuthToken()`

<pre> Secure token issued by server used to generate zero-knowledge proofs </pre>

`bytes auth_token = 3;`

 * **Returns:** The authToken.

## `boolean hasProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

 * **Returns:** Whether the protection field is set.

## `trinsic.services.account.v1.AccountOuterClass.TokenProtection getProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

 * **Returns:** The protection.

## `trinsic.services.account.v1.AccountOuterClass.TokenProtectionOrBuilder getProtectionOrBuilder()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public static final class AccountProfile extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Device profile containing sensitive authentication data. This information should be stored securely </pre>

Protobuf type {@code services.account.v1.AccountProfile}

## `@java.lang.Override public java.lang.String getProfileType()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** The profileType.

## `@java.lang.Override public com.google.protobuf.ByteString getProfileTypeBytes()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** The bytes for profileType.

## `@java.lang.Override public com.google.protobuf.ByteString getAuthData()`

<pre> Auth data containg information about the current device access </pre>

`bytes auth_data = 2;`

 * **Returns:** The authData.

## `@java.lang.Override public com.google.protobuf.ByteString getAuthToken()`

<pre> Secure token issued by server used to generate zero-knowledge proofs </pre>

`bytes auth_token = 3;`

 * **Returns:** The authToken.

## `@java.lang.Override public boolean hasProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

 * **Returns:** Whether the protection field is set.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.TokenProtection getProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

 * **Returns:** The protection.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.TokenProtectionOrBuilder getProtectionOrBuilder()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Device profile containing sensitive authentication data. This information should be stored securely </pre>

Protobuf type {@code services.account.v1.AccountProfile}

## `public java.lang.String getProfileType()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** The profileType.

## `public com.google.protobuf.ByteString getProfileTypeBytes()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** The bytes for profileType.

## `public Builder setProfileType( java.lang.String value)`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Parameters:** `value` — The profileType to set.
 * **Returns:** This builder for chaining.

## `public Builder clearProfileType()`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Returns:** This builder for chaining.

## `public Builder setProfileTypeBytes( com.google.protobuf.ByteString value)`

<pre> The type of profile, used to differentiate between protocol schemes or versions </pre>

`string profile_type = 1;`

 * **Parameters:** `value` — The bytes for profileType to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public com.google.protobuf.ByteString getAuthData()`

<pre> Auth data containg information about the current device access </pre>

`bytes auth_data = 2;`

 * **Returns:** The authData.

## `public Builder setAuthData(com.google.protobuf.ByteString value)`

<pre> Auth data containg information about the current device access </pre>

`bytes auth_data = 2;`

 * **Parameters:** `value` — The authData to set.
 * **Returns:** This builder for chaining.

## `public Builder clearAuthData()`

<pre> Auth data containg information about the current device access </pre>

`bytes auth_data = 2;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public com.google.protobuf.ByteString getAuthToken()`

<pre> Secure token issued by server used to generate zero-knowledge proofs </pre>

`bytes auth_token = 3;`

 * **Returns:** The authToken.

## `public Builder setAuthToken(com.google.protobuf.ByteString value)`

<pre> Secure token issued by server used to generate zero-knowledge proofs </pre>

`bytes auth_token = 3;`

 * **Parameters:** `value` — The authToken to set.
 * **Returns:** This builder for chaining.

## `public Builder clearAuthToken()`

<pre> Secure token issued by server used to generate zero-knowledge proofs </pre>

`bytes auth_token = 3;`

 * **Returns:** This builder for chaining.

## `public boolean hasProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

 * **Returns:** Whether the protection field is set.

## `public trinsic.services.account.v1.AccountOuterClass.TokenProtection getProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

 * **Returns:** The protection.

## `public Builder setProtection(trinsic.services.account.v1.AccountOuterClass.TokenProtection value)`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public Builder setProtection( trinsic.services.account.v1.AccountOuterClass.TokenProtection.Builder builderForValue)`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public Builder mergeProtection(trinsic.services.account.v1.AccountOuterClass.TokenProtection value)`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public Builder clearProtection()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public trinsic.services.account.v1.AccountOuterClass.TokenProtection.Builder getProtectionBuilder()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `public trinsic.services.account.v1.AccountOuterClass.TokenProtectionOrBuilder getProtectionOrBuilder()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.account.v1.AccountOuterClass.TokenProtection, trinsic.services.account.v1.AccountOuterClass.TokenProtection.Builder, trinsic.services.account.v1.AccountOuterClass.TokenProtectionOrBuilder> getProtectionFieldBuilder()`

<pre> Token security information about the token. If token protection is enabled, implementations must supply protection secret before using the token for authentication. </pre>

`.services.account.v1.TokenProtection protection = 4;`

## `boolean getEnabled()`

<pre> Indicates if token is protected using a PIN, security code, HSM secret, etc. </pre>

`bool enabled = 1;`

 * **Returns:** The enabled.

## `int getMethodValue()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** The enum numeric value on the wire for method.

## `trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod getMethod()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** The method.

## `public static final class TokenProtection extends com.google.protobuf.GeneratedMessageV3 implements`

<pre> Token protection info </pre>

Protobuf type {@code services.account.v1.TokenProtection}

## `@java.lang.Override public boolean getEnabled()`

<pre> Indicates if token is protected using a PIN, security code, HSM secret, etc. </pre>

`bool enabled = 1;`

 * **Returns:** The enabled.

## `@java.lang.Override public int getMethodValue()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** The enum numeric value on the wire for method.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod getMethod()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** The method.

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

<pre> Token protection info </pre>

Protobuf type {@code services.account.v1.TokenProtection}

## `@java.lang.Override public boolean getEnabled()`

<pre> Indicates if token is protected using a PIN, security code, HSM secret, etc. </pre>

`bool enabled = 1;`

 * **Returns:** The enabled.

## `public Builder setEnabled(boolean value)`

<pre> Indicates if token is protected using a PIN, security code, HSM secret, etc. </pre>

`bool enabled = 1;`

 * **Parameters:** `value` — The enabled to set.
 * **Returns:** This builder for chaining.

## `public Builder clearEnabled()`

<pre> Indicates if token is protected using a PIN, security code, HSM secret, etc. </pre>

`bool enabled = 1;`

 * **Returns:** This builder for chaining.

## `@java.lang.Override public int getMethodValue()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** The enum numeric value on the wire for method.

## `public Builder setMethodValue(int value)`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Parameters:** `value` — The enum numeric value on the wire for method to set.
 * **Returns:** This builder for chaining.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod getMethod()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** The method.

## `public Builder setMethod(trinsic.services.account.v1.AccountOuterClass.ConfirmationMethod value)`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Parameters:** `value` — The method to set.
 * **Returns:** This builder for chaining.

## `public Builder clearMethod()`

<pre> The method used to protect the token </pre>

`.services.account.v1.ConfirmationMethod method = 2;`

 * **Returns:** This builder for chaining.

## `public static final class InfoRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.account.v1.InfoRequest}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.account.v1.InfoRequest}

## `boolean hasDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** Whether the details field is set.

## `trinsic.services.account.v1.AccountOuterClass.AccountDetails getDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** The details.

## `trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder getDetailsOrBuilder()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `java.util.List<trinsic.services.common.v1.ProviderOuterClass.Ecosystem> getEcosystemsList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `trinsic.services.common.v1.ProviderOuterClass.Ecosystem getEcosystems(int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `int getEcosystemsCount()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `java.util.List<? extends trinsic.services.common.v1.ProviderOuterClass.EcosystemOrBuilder> getEcosystemsOrBuilderList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `trinsic.services.common.v1.ProviderOuterClass.EcosystemOrBuilder getEcosystemsOrBuilder( int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public static final class InfoResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.account.v1.InfoResponse}

## `@java.lang.Override public boolean hasDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** Whether the details field is set.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.AccountDetails getDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** The details.

## `@java.lang.Override public trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder getDetailsOrBuilder()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `@java.lang.Override public java.util.List<trinsic.services.common.v1.ProviderOuterClass.Ecosystem> getEcosystemsList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `@java.lang.Override public java.util.List<? extends trinsic.services.common.v1.ProviderOuterClass.EcosystemOrBuilder> getEcosystemsOrBuilderList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `@java.lang.Override public int getEcosystemsCount()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `@java.lang.Override public trinsic.services.common.v1.ProviderOuterClass.Ecosystem getEcosystems(int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `@java.lang.Override public trinsic.services.common.v1.ProviderOuterClass.EcosystemOrBuilder getEcosystemsOrBuilder( int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.account.v1.InfoResponse}

## `public boolean hasDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** Whether the details field is set.

## `public trinsic.services.account.v1.AccountOuterClass.AccountDetails getDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

 * **Returns:** The details.

## `public Builder setDetails(trinsic.services.account.v1.AccountOuterClass.AccountDetails value)`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public Builder setDetails( trinsic.services.account.v1.AccountOuterClass.AccountDetails.Builder builderForValue)`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public Builder mergeDetails(trinsic.services.account.v1.AccountOuterClass.AccountDetails value)`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public Builder clearDetails()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public trinsic.services.account.v1.AccountOuterClass.AccountDetails.Builder getDetailsBuilder()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder getDetailsOrBuilder()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `private com.google.protobuf.SingleFieldBuilderV3< trinsic.services.account.v1.AccountOuterClass.AccountDetails, trinsic.services.account.v1.AccountOuterClass.AccountDetails.Builder, trinsic.services.account.v1.AccountOuterClass.AccountDetailsOrBuilder> getDetailsFieldBuilder()`

<pre> The account details associated with the calling request context </pre>

`.services.account.v1.AccountDetails details = 1;`

## `public java.util.List<trinsic.services.common.v1.ProviderOuterClass.Ecosystem> getEcosystemsList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public int getEcosystemsCount()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public trinsic.services.common.v1.ProviderOuterClass.Ecosystem getEcosystems(int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder setEcosystems( int index, trinsic.services.common.v1.ProviderOuterClass.Ecosystem value)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder setEcosystems( int index, trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder builderForValue)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder addEcosystems(trinsic.services.common.v1.ProviderOuterClass.Ecosystem value)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder addEcosystems( int index, trinsic.services.common.v1.ProviderOuterClass.Ecosystem value)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder addEcosystems( trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder builderForValue)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder addEcosystems( int index, trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder builderForValue)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder addAllEcosystems( java.lang.Iterable<? extends trinsic.services.common.v1.ProviderOuterClass.Ecosystem> values)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder clearEcosystems()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public Builder removeEcosystems(int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder getEcosystemsBuilder( int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public trinsic.services.common.v1.ProviderOuterClass.EcosystemOrBuilder getEcosystemsOrBuilder( int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public java.util.List<? extends trinsic.services.common.v1.ProviderOuterClass.EcosystemOrBuilder> getEcosystemsOrBuilderList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder addEcosystemsBuilder()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder addEcosystemsBuilder( int index)`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public java.util.List<trinsic.services.common.v1.ProviderOuterClass.Ecosystem.Builder> getEcosystemsBuilderList()`

<pre> any ecosystems the account has access to </pre>

`repeated .services.provider.v1.Ecosystem ecosystems = 2;`

## `public static final class ListDevicesRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.account.v1.ListDevicesRequest}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.account.v1.ListDevicesRequest}

## `public static final class ListDevicesResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.account.v1.ListDevicesResponse}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.account.v1.ListDevicesResponse}

## `public static final class RevokeDeviceRequest extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.account.v1.RevokeDeviceRequest}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.account.v1.RevokeDeviceRequest}

## `public static final class RevokeDeviceResponse extends com.google.protobuf.GeneratedMessageV3 implements`

Protobuf type {@code services.account.v1.RevokeDeviceResponse}

## `public static final class Builder extends com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements`

Protobuf type {@code services.account.v1.RevokeDeviceResponse}
