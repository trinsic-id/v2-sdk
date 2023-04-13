// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: services/provider/v1/provider.proto

package trinsic.services.provider.v1;

@java.lang.Deprecated
public interface RetrieveDomainVerificationRecordResponseOrBuilder
    extends
    // @@protoc_insertion_point(interface_extends:services.provider.v1.RetrieveDomainVerificationRecordResponse)
    com.google.protobuf.MessageOrBuilder {

  /**
   *
   *
   * <pre>
   * TXT record name to use for domain verification
   * </pre>
   *
   * <code>string verification_record_name = 1;</code>
   *
   * @return The verificationRecordName.
   */
  java.lang.String getVerificationRecordName();
  /**
   *
   *
   * <pre>
   * TXT record name to use for domain verification
   * </pre>
   *
   * <code>string verification_record_name = 1;</code>
   *
   * @return The bytes for verificationRecordName.
   */
  com.google.protobuf.ByteString getVerificationRecordNameBytes();

  /**
   *
   *
   * <pre>
   * TXT code for domain verification
   * </pre>
   *
   * <code>string verification_record_Value = 2;</code>
   *
   * @return The verificationRecordValue.
   */
  java.lang.String getVerificationRecordValue();
  /**
   *
   *
   * <pre>
   * TXT code for domain verification
   * </pre>
   *
   * <code>string verification_record_Value = 2;</code>
   *
   * @return The bytes for verificationRecordValue.
   */
  com.google.protobuf.ByteString getVerificationRecordValueBytes();
}
