// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.digest;

import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.binary.StringUtils;

public class DigestUtils
{

    private static final int STREAM_BUFFER_LENGTH = 1024;

    public DigestUtils()
    {
    }

    private static byte[] digest(MessageDigest messagedigest, InputStream inputstream)
    {
        byte abyte0[] = new byte[1024];
        for (int i = inputstream.read(abyte0, 0, 1024); i > -1; i = inputstream.read(abyte0, 0, 1024))
        {
            messagedigest.update(abyte0, 0, i);
        }

        return messagedigest.digest();
    }

    private static byte[] getBytesUtf8(String s)
    {
        return StringUtils.getBytesUtf8(s);
    }

    static MessageDigest getDigest(String s)
    {
        MessageDigest messagedigest;
        try
        {
            messagedigest = MessageDigest.getInstance(s);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception.getMessage());
        }
        return messagedigest;
    }

    private static MessageDigest getMd5Digest()
    {
        return getDigest("MD5");
    }

    private static MessageDigest getSha256Digest()
    {
        return getDigest("SHA-256");
    }

    private static MessageDigest getSha384Digest()
    {
        return getDigest("SHA-384");
    }

    private static MessageDigest getSha512Digest()
    {
        return getDigest("SHA-512");
    }

    private static MessageDigest getShaDigest()
    {
        return getDigest("SHA");
    }

    public static byte[] md5(InputStream inputstream)
    {
        return digest(getMd5Digest(), inputstream);
    }

    public static byte[] md5(String s)
    {
        return md5(getBytesUtf8(s));
    }

    public static byte[] md5(byte abyte0[])
    {
        return getMd5Digest().digest(abyte0);
    }

    public static String md5Hex(InputStream inputstream)
    {
        return Hex.encodeHexString(md5(inputstream));
    }

    public static String md5Hex(String s)
    {
        return Hex.encodeHexString(md5(s));
    }

    public static String md5Hex(byte abyte0[])
    {
        return Hex.encodeHexString(md5(abyte0));
    }

    public static byte[] sha(InputStream inputstream)
    {
        return digest(getShaDigest(), inputstream);
    }

    public static byte[] sha(String s)
    {
        return sha(getBytesUtf8(s));
    }

    public static byte[] sha(byte abyte0[])
    {
        return getShaDigest().digest(abyte0);
    }

    public static byte[] sha256(InputStream inputstream)
    {
        return digest(getSha256Digest(), inputstream);
    }

    public static byte[] sha256(String s)
    {
        return sha256(getBytesUtf8(s));
    }

    public static byte[] sha256(byte abyte0[])
    {
        return getSha256Digest().digest(abyte0);
    }

    public static String sha256Hex(InputStream inputstream)
    {
        return Hex.encodeHexString(sha256(inputstream));
    }

    public static String sha256Hex(String s)
    {
        return Hex.encodeHexString(sha256(s));
    }

    public static String sha256Hex(byte abyte0[])
    {
        return Hex.encodeHexString(sha256(abyte0));
    }

    public static byte[] sha384(InputStream inputstream)
    {
        return digest(getSha384Digest(), inputstream);
    }

    public static byte[] sha384(String s)
    {
        return sha384(getBytesUtf8(s));
    }

    public static byte[] sha384(byte abyte0[])
    {
        return getSha384Digest().digest(abyte0);
    }

    public static String sha384Hex(InputStream inputstream)
    {
        return Hex.encodeHexString(sha384(inputstream));
    }

    public static String sha384Hex(String s)
    {
        return Hex.encodeHexString(sha384(s));
    }

    public static String sha384Hex(byte abyte0[])
    {
        return Hex.encodeHexString(sha384(abyte0));
    }

    public static byte[] sha512(InputStream inputstream)
    {
        return digest(getSha512Digest(), inputstream);
    }

    public static byte[] sha512(String s)
    {
        return sha512(getBytesUtf8(s));
    }

    public static byte[] sha512(byte abyte0[])
    {
        return getSha512Digest().digest(abyte0);
    }

    public static String sha512Hex(InputStream inputstream)
    {
        return Hex.encodeHexString(sha512(inputstream));
    }

    public static String sha512Hex(String s)
    {
        return Hex.encodeHexString(sha512(s));
    }

    public static String sha512Hex(byte abyte0[])
    {
        return Hex.encodeHexString(sha512(abyte0));
    }

    public static String shaHex(InputStream inputstream)
    {
        return Hex.encodeHexString(sha(inputstream));
    }

    public static String shaHex(String s)
    {
        return Hex.encodeHexString(sha(s));
    }

    public static String shaHex(byte abyte0[])
    {
        return Hex.encodeHexString(sha(abyte0));
    }
}
