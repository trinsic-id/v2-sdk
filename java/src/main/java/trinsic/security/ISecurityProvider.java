package trinsic.security;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import trinsic.okapi.DidException;
import trinsic.services.account.v1.AccountProfile;

public interface ISecurityProvider {
  String GetAuthHeader(AccountProfile accountProfile, Message message)
      throws InvalidProtocolBufferException, DidException;
}
