// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.config;

import org.apache.http.util.Args;

public class SocketConfig
    implements Cloneable
{
    public static class Builder
    {

        private boolean soKeepAlive;
        private int soLinger;
        private boolean soReuseAddress;
        private int soTimeout;
        private boolean tcpNoDelay;

        public SocketConfig build()
        {
            return new SocketConfig(soTimeout, soReuseAddress, soLinger, soKeepAlive, tcpNoDelay);
        }

        public Builder setSoKeepAlive(boolean flag)
        {
            soKeepAlive = flag;
            return this;
        }

        public Builder setSoLinger(int i)
        {
            soLinger = i;
            return this;
        }

        public Builder setSoReuseAddress(boolean flag)
        {
            soReuseAddress = flag;
            return this;
        }

        public Builder setSoTimeout(int i)
        {
            soTimeout = i;
            return this;
        }

        public Builder setTcpNoDelay(boolean flag)
        {
            tcpNoDelay = flag;
            return this;
        }

        Builder()
        {
            soLinger = -1;
            tcpNoDelay = true;
        }
    }


    public static final SocketConfig DEFAULT = (new Builder()).build();
    private final boolean soKeepAlive;
    private final int soLinger;
    private final boolean soReuseAddress;
    private final int soTimeout;
    private final boolean tcpNoDelay;

    SocketConfig(int i, boolean flag, int j, boolean flag1, boolean flag2)
    {
        soTimeout = i;
        soReuseAddress = flag;
        soLinger = j;
        soKeepAlive = flag1;
        tcpNoDelay = flag2;
    }

    public static Builder copy(SocketConfig socketconfig)
    {
        Args.notNull(socketconfig, "Socket config");
        return (new Builder()).setSoTimeout(socketconfig.getSoTimeout()).setSoReuseAddress(socketconfig.isSoReuseAddress()).setSoLinger(socketconfig.getSoLinger()).setSoKeepAlive(socketconfig.isSoKeepAlive()).setTcpNoDelay(socketconfig.isTcpNoDelay());
    }

    public static Builder custom()
    {
        return new Builder();
    }

    protected volatile Object clone()
    {
        return clone();
    }

    protected SocketConfig clone()
    {
        return (SocketConfig)super.clone();
    }

    public int getSoLinger()
    {
        return soLinger;
    }

    public int getSoTimeout()
    {
        return soTimeout;
    }

    public boolean isSoKeepAlive()
    {
        return soKeepAlive;
    }

    public boolean isSoReuseAddress()
    {
        return soReuseAddress;
    }

    public boolean isTcpNoDelay()
    {
        return tcpNoDelay;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[soTimeout=").append(soTimeout).append(", soReuseAddress=").append(soReuseAddress).append(", soLinger=").append(soLinger).append(", soKeepAlive=").append(soKeepAlive).append(", tcpNoDelay=").append(tcpNoDelay).append("]");
        return stringbuilder.toString();
    }

}
