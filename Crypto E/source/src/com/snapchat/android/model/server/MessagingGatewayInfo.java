// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import com.snapchat.android.model.server.chat.SignedPayload;

public class MessagingGatewayInfo
{

    private SignedPayload mGatewayAuthToken;
    private String mGatewayServer;
    private String mHost;
    private int mPort;

    public MessagingGatewayInfo()
    {
        mHost = null;
        mPort = -1;
    }

    private void parseServer()
    {
        String as[] = mGatewayServer.split(":");
        mHost = as[0];
        mPort = Integer.parseInt(as[1]);
    }

    public SignedPayload getGatewayAuthToken()
    {
        return mGatewayAuthToken;
    }

    public String getHost()
    {
        if (mHost == null)
        {
            parseServer();
        }
        return mHost;
    }

    public int getPort()
    {
        if (mPort == -1)
        {
            parseServer();
        }
        return mPort;
    }

    public void setGatewayAuthToken(SignedPayload signedpayload)
    {
        mGatewayAuthToken = signedpayload;
    }

    public void setGatewayServer(String s)
    {
        mGatewayServer = s;
        parseServer();
    }

    public String toString()
    {
        return (new StringBuilder()).append("MessagingGatewayInfo{mGatewayAuthToken=").append(mGatewayAuthToken).append(", mGatewayServer='").append(mGatewayServer).append('\'').append(", mHost='").append(mHost).append('\'').append(", mPort=").append(mPort).append('}').toString();
    }
}
