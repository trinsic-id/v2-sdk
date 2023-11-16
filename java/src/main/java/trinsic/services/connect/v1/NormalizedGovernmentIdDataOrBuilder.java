// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/connect/v1/connect.proto

package trinsic.services.connect.v1;

public interface NormalizedGovernmentIdDataOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.connect.v1.NormalizedGovernmentIdData)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * The ID number of the underlying identity document
   * </pre>
   *
   * <code>optional string id_number = 1 [json_name = "idNumber"];</code>
   *
   * @return Whether the idNumber field is set.
   */
  boolean hasIdNumber();
  /**
   *
   *
   * <pre>
   * The ID number of the underlying identity document
   * </pre>
   *
   * <code>optional string id_number = 1 [json_name = "idNumber"];</code>
   *
   * @return The idNumber.
   */
  java.lang.String getIdNumber();
  /**
   *
   *
   * <pre>
   * The ID number of the underlying identity document
   * </pre>
   *
   * <code>optional string id_number = 1 [json_name = "idNumber"];</code>
   *
   * @return The bytes for idNumber.
   */
  com.google.protobuf.ByteString getIdNumberBytes();

  /**
   *
   *
   * <pre>
   * Given ("first") name of the document holder
   * </pre>
   *
   * <code>optional string given_name = 2 [json_name = "givenName"];</code>
   *
   * @return Whether the givenName field is set.
   */
  boolean hasGivenName();
  /**
   *
   *
   * <pre>
   * Given ("first") name of the document holder
   * </pre>
   *
   * <code>optional string given_name = 2 [json_name = "givenName"];</code>
   *
   * @return The givenName.
   */
  java.lang.String getGivenName();
  /**
   *
   *
   * <pre>
   * Given ("first") name of the document holder
   * </pre>
   *
   * <code>optional string given_name = 2 [json_name = "givenName"];</code>
   *
   * @return The bytes for givenName.
   */
  com.google.protobuf.ByteString getGivenNameBytes();

  /**
   *
   *
   * <pre>
   * Family ("last") name of the document holder
   * </pre>
   *
   * <code>optional string family_name = 3 [json_name = "familyName"];</code>
   *
   * @return Whether the familyName field is set.
   */
  boolean hasFamilyName();
  /**
   *
   *
   * <pre>
   * Family ("last") name of the document holder
   * </pre>
   *
   * <code>optional string family_name = 3 [json_name = "familyName"];</code>
   *
   * @return The familyName.
   */
  java.lang.String getFamilyName();
  /**
   *
   *
   * <pre>
   * Family ("last") name of the document holder
   * </pre>
   *
   * <code>optional string family_name = 3 [json_name = "familyName"];</code>
   *
   * @return The bytes for familyName.
   */
  com.google.protobuf.ByteString getFamilyNameBytes();

  /**
   *
   *
   * <pre>
   * Full address of the document holder
   * </pre>
   *
   * <code>optional string address = 4 [json_name = "address"];</code>
   *
   * @return Whether the address field is set.
   */
  boolean hasAddress();
  /**
   *
   *
   * <pre>
   * Full address of the document holder
   * </pre>
   *
   * <code>optional string address = 4 [json_name = "address"];</code>
   *
   * @return The address.
   */
  java.lang.String getAddress();
  /**
   *
   *
   * <pre>
   * Full address of the document holder
   * </pre>
   *
   * <code>optional string address = 4 [json_name = "address"];</code>
   *
   * @return The bytes for address.
   */
  com.google.protobuf.ByteString getAddressBytes();

  /**
   *
   *
   * <pre>
   * Date of birth of the document holder
   * </pre>
   *
   * <code>optional string date_of_birth = 5 [json_name = "dateOfBirth"];</code>
   *
   * @return Whether the dateOfBirth field is set.
   */
  boolean hasDateOfBirth();
  /**
   *
   *
   * <pre>
   * Date of birth of the document holder
   * </pre>
   *
   * <code>optional string date_of_birth = 5 [json_name = "dateOfBirth"];</code>
   *
   * @return The dateOfBirth.
   */
  java.lang.String getDateOfBirth();
  /**
   *
   *
   * <pre>
   * Date of birth of the document holder
   * </pre>
   *
   * <code>optional string date_of_birth = 5 [json_name = "dateOfBirth"];</code>
   *
   * @return The bytes for dateOfBirth.
   */
  com.google.protobuf.ByteString getDateOfBirthBytes();

  /**
   *
   *
   * <pre>
   * ISO3 country code of the document
   * </pre>
   *
   * <code>optional string country = 6 [json_name = "country"];</code>
   *
   * @return Whether the country field is set.
   */
  boolean hasCountry();
  /**
   *
   *
   * <pre>
   * ISO3 country code of the document
   * </pre>
   *
   * <code>optional string country = 6 [json_name = "country"];</code>
   *
   * @return The country.
   */
  java.lang.String getCountry();
  /**
   *
   *
   * <pre>
   * ISO3 country code of the document
   * </pre>
   *
   * <code>optional string country = 6 [json_name = "country"];</code>
   *
   * @return The bytes for country.
   */
  com.google.protobuf.ByteString getCountryBytes();

  /**
   *
   *
   * <pre>
   * Issuance date of the document
   * </pre>
   *
   * <code>optional string issue_date = 7 [json_name = "issueDate"];</code>
   *
   * @return Whether the issueDate field is set.
   */
  boolean hasIssueDate();
  /**
   *
   *
   * <pre>
   * Issuance date of the document
   * </pre>
   *
   * <code>optional string issue_date = 7 [json_name = "issueDate"];</code>
   *
   * @return The issueDate.
   */
  java.lang.String getIssueDate();
  /**
   *
   *
   * <pre>
   * Issuance date of the document
   * </pre>
   *
   * <code>optional string issue_date = 7 [json_name = "issueDate"];</code>
   *
   * @return The bytes for issueDate.
   */
  com.google.protobuf.ByteString getIssueDateBytes();

  /**
   *
   *
   * <pre>
   * Expiration date date of the document
   * </pre>
   *
   * <code>optional string expiration_date = 8 [json_name = "expirationDate"];</code>
   *
   * @return Whether the expirationDate field is set.
   */
  boolean hasExpirationDate();
  /**
   *
   *
   * <pre>
   * Expiration date date of the document
   * </pre>
   *
   * <code>optional string expiration_date = 8 [json_name = "expirationDate"];</code>
   *
   * @return The expirationDate.
   */
  java.lang.String getExpirationDate();
  /**
   *
   *
   * <pre>
   * Expiration date date of the document
   * </pre>
   *
   * <code>optional string expiration_date = 8 [json_name = "expirationDate"];</code>
   *
   * @return The bytes for expirationDate.
   */
  com.google.protobuf.ByteString getExpirationDateBytes();
}
