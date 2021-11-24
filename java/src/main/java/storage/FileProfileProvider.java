package storage;

import io.leonard.Base58;
import org.jetbrains.annotations.NotNull;
import trinsic.services.account.v1.Account;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class FileProfileProvider implements IProfileProvider {
    @Override
    public Account.AccountProfile get(String name) throws NoSuchAlgorithmException, IOException {
        // TODO - Location application data
        Path filename = getFilename(name);
        var readFile = new FileInputStream(String.valueOf(filename));
        return Account.AccountProfile.newBuilder().mergeFrom(readFile.readAllBytes()).build();
    }

    @NotNull
    private Path getFilename(String name) throws NoSuchAlgorithmException {
        var rootPath = "";
        var SHA256 = MessageDigest.getInstance("SHA-256");
        return Path.of(rootPath, Base58.encode(SHA256.digest(name.getBytes(StandardCharsets.UTF_8))));
    }

    @Override
    public void save(String name, Account.AccountProfile accountProfile) throws NoSuchAlgorithmException, IOException {
        // TODO - Location application data
        Path filename = getFilename(name);
        var writeFile = new FileOutputStream(String.valueOf(filename));
        writeFile.write(accountProfile.toByteArray());
    }
}
