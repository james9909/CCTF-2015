// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;


// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage

public class ConnectResponse extends SCMessage
{
    public static class Server
    {

        private String hostname;
        private int port;

        public String getHostname()
        {
            return hostname;
        }

        public int getPort()
        {
            return port;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Server{hostname='").append(hostname).append('\'').append(", port=").append(port).append('}').toString();
        }

        public Server()
        {
        }
    }


    public static final String TYPE = "connect_response";
    private Server alternative_server;
    private String failure_reason;
    private boolean success;

    public ConnectResponse()
    {
        super("connect_response");
    }

    public Server getAlternativeServer()
    {
        return alternative_server;
    }

    public String getFailureReason()
    {
        return failure_reason;
    }

    public boolean isSuccessful()
    {
        return success;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConnectResponse{success=").append(success).append(", failure_reason='").append(failure_reason).append('\'').append(", alternative_server=").append(alternative_server).append('}').toString();
    }
}
