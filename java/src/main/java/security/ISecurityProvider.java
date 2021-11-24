package security;

import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import trinsic.services.account.v1.Account;

public interface ISecurityProvider {
    String GetAuthHeader(Account.AccountProfile accountProfile, Message message) throws InvalidProtocolBufferException, DidException;
}
