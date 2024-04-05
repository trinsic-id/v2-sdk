// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/connect/v1/connect.proto

package trinsic.services.connect.v1;

public interface GovernmentIDFieldsOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.connect.v1.GovernmentIDFields)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * ID number of the underlying identity document
   * </pre>
   *
   * <code>bool id_number = 1;</code>
   *
   * @return The idNumber.
   */
  boolean getIdNumber();

  /**
   *
   *
   * <pre>
   * Given ("first") name of the document holder
   * </pre>
   *
   * <code>bool given_name = 2;</code>
   *
   * @return The givenName.
   */
  boolean getGivenName();

  /**
   *
   *
   * <pre>
   * Family ("last") name of the document holder
   * </pre>
   *
   * <code>bool family_name = 3;</code>
   *
   * @return The familyName.
   */
  boolean getFamilyName();

  /**
   *
   *
   * <pre>
   * Full address of the document holder
   * </pre>
   *
   * <code>bool address = 4;</code>
   *
   * @return The address.
   */
  boolean getAddress();

  /**
   *
   *
   * <pre>
   * Date of birth of the document holder
   * </pre>
   *
   * <code>bool date_of_birth = 5;</code>
   *
   * @return The dateOfBirth.
   */
  boolean getDateOfBirth();

  /**
   *
   *
   * <pre>
   * ISO3 country code of the document
   * </pre>
   *
   * <code>bool country = 6;</code>
   *
   * @return The country.
   */
  boolean getCountry();

  /**
   *
   *
   * <pre>
   * Issuance date of the document
   * </pre>
   *
   * <code>bool issue_date = 7;</code>
   *
   * @return The issueDate.
   */
  boolean getIssueDate();

  /**
   *
   *
   * <pre>
   * Expiration date date of the document
   * </pre>
   *
   * <code>bool expiration_date = 8;</code>
   *
   * @return The expirationDate.
   */
  boolean getExpirationDate();
}