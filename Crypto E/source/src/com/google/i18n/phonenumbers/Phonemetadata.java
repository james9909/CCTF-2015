// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class Phonemetadata
{
    public static class NumberFormat
        implements Externalizable
    {

        private boolean a;
        private String b;
        private boolean c;
        private String d;
        private List e;
        private boolean f;
        private String g;
        private boolean h;
        private boolean i;
        private boolean j;
        private String k;

        public NumberFormat a(String s)
        {
            a = true;
            b = s;
            return this;
        }

        public NumberFormat a(boolean flag)
        {
            h = true;
            i = flag;
            return this;
        }

        public String a()
        {
            return b;
        }

        public String a(int l)
        {
            return (String)e.get(l);
        }

        public NumberFormat b(String s)
        {
            c = true;
            d = s;
            return this;
        }

        public String b()
        {
            return d;
        }

        public int c()
        {
            return e.size();
        }

        public NumberFormat c(String s)
        {
            f = true;
            g = s;
            return this;
        }

        public NumberFormat d(String s)
        {
            j = true;
            k = s;
            return this;
        }

        public String d()
        {
            return g;
        }

        public boolean e()
        {
            return i;
        }

        public String f()
        {
            return k;
        }

        public void readExternal(ObjectInput objectinput)
        {
            a(objectinput.readUTF());
            b(objectinput.readUTF());
            int l = objectinput.readInt();
            for (int i1 = 0; i1 < l; i1++)
            {
                e.add(objectinput.readUTF());
            }

            if (objectinput.readBoolean())
            {
                c(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                d(objectinput.readUTF());
            }
            a(objectinput.readBoolean());
        }

        public void writeExternal(ObjectOutput objectoutput)
        {
            objectoutput.writeUTF(b);
            objectoutput.writeUTF(d);
            int l = c();
            objectoutput.writeInt(l);
            for (int i1 = 0; i1 < l; i1++)
            {
                objectoutput.writeUTF((String)e.get(i1));
            }

            objectoutput.writeBoolean(f);
            if (f)
            {
                objectoutput.writeUTF(g);
            }
            objectoutput.writeBoolean(j);
            if (j)
            {
                objectoutput.writeUTF(k);
            }
            objectoutput.writeBoolean(i);
        }

        public NumberFormat()
        {
            b = "";
            d = "";
            e = new ArrayList();
            g = "";
            i = false;
            k = "";
        }
    }

    public static final class NumberFormat.Builder extends NumberFormat
    {

        public NumberFormat.Builder()
        {
        }
    }

    public static class PhoneMetadata
        implements Externalizable
    {

        private boolean A;
        private PhoneNumberDesc B;
        private boolean C;
        private PhoneNumberDesc D;
        private boolean E;
        private PhoneNumberDesc F;
        private boolean G;
        private String H;
        private boolean I;
        private int J;
        private boolean K;
        private String L;
        private boolean M;
        private String N;
        private boolean O;
        private String P;
        private boolean Q;
        private String R;
        private boolean S;
        private String T;
        private boolean U;
        private String V;
        private boolean W;
        private boolean X;
        private List Y;
        private List Z;
        private boolean a;
        private boolean aa;
        private boolean ab;
        private boolean ac;
        private String ad;
        private boolean ae;
        private boolean af;
        private boolean ag;
        private boolean ah;
        private PhoneNumberDesc b;
        private boolean c;
        private PhoneNumberDesc d;
        private boolean e;
        private PhoneNumberDesc f;
        private boolean g;
        private PhoneNumberDesc h;
        private boolean i;
        private PhoneNumberDesc j;
        private boolean k;
        private PhoneNumberDesc l;
        private boolean m;
        private PhoneNumberDesc n;
        private boolean o;
        private PhoneNumberDesc p;
        private boolean q;
        private PhoneNumberDesc r;
        private boolean s;
        private PhoneNumberDesc t;
        private boolean u;
        private PhoneNumberDesc v;
        private boolean w;
        private PhoneNumberDesc x;
        private boolean y;
        private PhoneNumberDesc z;

        public PhoneMetadata a(int i1)
        {
            I = true;
            J = i1;
            return this;
        }

        public PhoneMetadata a(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                a = true;
                b = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata a(String s1)
        {
            G = true;
            H = s1;
            return this;
        }

        public PhoneMetadata a(boolean flag)
        {
            W = true;
            X = flag;
            return this;
        }

        public PhoneNumberDesc a()
        {
            return b;
        }

        public PhoneMetadata b(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                c = true;
                d = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata b(String s1)
        {
            K = true;
            L = s1;
            return this;
        }

        public PhoneMetadata b(boolean flag)
        {
            aa = true;
            ab = flag;
            return this;
        }

        public PhoneNumberDesc b()
        {
            return d;
        }

        public PhoneMetadata c(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                e = true;
                f = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata c(String s1)
        {
            M = true;
            N = s1;
            return this;
        }

        public PhoneMetadata c(boolean flag)
        {
            ae = true;
            af = flag;
            return this;
        }

        public PhoneNumberDesc c()
        {
            return f;
        }

        public PhoneMetadata d(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                g = true;
                h = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata d(String s1)
        {
            O = true;
            P = s1;
            return this;
        }

        public PhoneMetadata d(boolean flag)
        {
            ag = true;
            ah = flag;
            return this;
        }

        public PhoneNumberDesc d()
        {
            return h;
        }

        public PhoneMetadata e(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                i = true;
                j = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata e(String s1)
        {
            Q = true;
            R = s1;
            return this;
        }

        public PhoneNumberDesc e()
        {
            return j;
        }

        public PhoneMetadata f(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                k = true;
                l = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata f(String s1)
        {
            S = true;
            T = s1;
            return this;
        }

        public PhoneNumberDesc f()
        {
            return l;
        }

        public PhoneMetadata g(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                m = true;
                n = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata g(String s1)
        {
            U = true;
            V = s1;
            return this;
        }

        public PhoneNumberDesc g()
        {
            return n;
        }

        public PhoneMetadata h(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                o = true;
                p = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata h(String s1)
        {
            ac = true;
            ad = s1;
            return this;
        }

        public PhoneNumberDesc h()
        {
            return p;
        }

        public PhoneMetadata i(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                q = true;
                r = phonenumberdesc;
                return this;
            }
        }

        public PhoneNumberDesc i()
        {
            return r;
        }

        public PhoneMetadata j(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                s = true;
                t = phonenumberdesc;
                return this;
            }
        }

        public PhoneNumberDesc j()
        {
            return t;
        }

        public PhoneMetadata k(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                u = true;
                v = phonenumberdesc;
                return this;
            }
        }

        public PhoneNumberDesc k()
        {
            return x;
        }

        public int l()
        {
            return J;
        }

        public PhoneMetadata l(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                w = true;
                x = phonenumberdesc;
                return this;
            }
        }

        public PhoneMetadata m(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                y = true;
                z = phonenumberdesc;
                return this;
            }
        }

        public String m()
        {
            return L;
        }

        public PhoneMetadata n(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                A = true;
                B = phonenumberdesc;
                return this;
            }
        }

        public String n()
        {
            return P;
        }

        public PhoneMetadata o(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                C = true;
                D = phonenumberdesc;
                return this;
            }
        }

        public boolean o()
        {
            return Q;
        }

        public PhoneMetadata p(PhoneNumberDesc phonenumberdesc)
        {
            if (phonenumberdesc == null)
            {
                throw new NullPointerException();
            } else
            {
                E = true;
                F = phonenumberdesc;
                return this;
            }
        }

        public String p()
        {
            return R;
        }

        public String q()
        {
            return T;
        }

        public String r()
        {
            return V;
        }

        public void readExternal(ObjectInput objectinput)
        {
            int i1 = 0;
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc = new PhoneNumberDesc();
                phonenumberdesc.readExternal(objectinput);
                a(phonenumberdesc);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc1 = new PhoneNumberDesc();
                phonenumberdesc1.readExternal(objectinput);
                b(phonenumberdesc1);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc2 = new PhoneNumberDesc();
                phonenumberdesc2.readExternal(objectinput);
                c(phonenumberdesc2);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc3 = new PhoneNumberDesc();
                phonenumberdesc3.readExternal(objectinput);
                d(phonenumberdesc3);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc4 = new PhoneNumberDesc();
                phonenumberdesc4.readExternal(objectinput);
                e(phonenumberdesc4);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc5 = new PhoneNumberDesc();
                phonenumberdesc5.readExternal(objectinput);
                f(phonenumberdesc5);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc6 = new PhoneNumberDesc();
                phonenumberdesc6.readExternal(objectinput);
                g(phonenumberdesc6);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc7 = new PhoneNumberDesc();
                phonenumberdesc7.readExternal(objectinput);
                h(phonenumberdesc7);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc8 = new PhoneNumberDesc();
                phonenumberdesc8.readExternal(objectinput);
                i(phonenumberdesc8);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc9 = new PhoneNumberDesc();
                phonenumberdesc9.readExternal(objectinput);
                j(phonenumberdesc9);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc10 = new PhoneNumberDesc();
                phonenumberdesc10.readExternal(objectinput);
                k(phonenumberdesc10);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc11 = new PhoneNumberDesc();
                phonenumberdesc11.readExternal(objectinput);
                l(phonenumberdesc11);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc12 = new PhoneNumberDesc();
                phonenumberdesc12.readExternal(objectinput);
                m(phonenumberdesc12);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc13 = new PhoneNumberDesc();
                phonenumberdesc13.readExternal(objectinput);
                n(phonenumberdesc13);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc14 = new PhoneNumberDesc();
                phonenumberdesc14.readExternal(objectinput);
                o(phonenumberdesc14);
            }
            if (objectinput.readBoolean())
            {
                PhoneNumberDesc phonenumberdesc15 = new PhoneNumberDesc();
                phonenumberdesc15.readExternal(objectinput);
                p(phonenumberdesc15);
            }
            a(objectinput.readUTF());
            a(objectinput.readInt());
            b(objectinput.readUTF());
            if (objectinput.readBoolean())
            {
                c(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                d(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                e(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                f(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                g(objectinput.readUTF());
            }
            a(objectinput.readBoolean());
            int j1 = objectinput.readInt();
            for (int k1 = 0; k1 < j1; k1++)
            {
                NumberFormat numberformat = new NumberFormat();
                numberformat.readExternal(objectinput);
                Y.add(numberformat);
            }

            for (int l1 = objectinput.readInt(); i1 < l1; i1++)
            {
                NumberFormat numberformat1 = new NumberFormat();
                numberformat1.readExternal(objectinput);
                Z.add(numberformat1);
            }

            b(objectinput.readBoolean());
            if (objectinput.readBoolean())
            {
                h(objectinput.readUTF());
            }
            c(objectinput.readBoolean());
            d(objectinput.readBoolean());
        }

        public boolean s()
        {
            return X;
        }

        public List t()
        {
            return Y;
        }

        public int u()
        {
            return Y.size();
        }

        public List v()
        {
            return Z;
        }

        public int w()
        {
            return Z.size();
        }

        public void writeExternal(ObjectOutput objectoutput)
        {
            int i1 = 0;
            objectoutput.writeBoolean(a);
            if (a)
            {
                b.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(c);
            if (c)
            {
                d.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(e);
            if (e)
            {
                f.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(g);
            if (g)
            {
                h.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(i);
            if (i)
            {
                j.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(k);
            if (k)
            {
                l.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(m);
            if (m)
            {
                n.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(o);
            if (o)
            {
                p.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(q);
            if (q)
            {
                r.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(s);
            if (s)
            {
                t.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(u);
            if (u)
            {
                v.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(w);
            if (w)
            {
                x.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(y);
            if (y)
            {
                z.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(A);
            if (A)
            {
                B.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(C);
            if (C)
            {
                D.writeExternal(objectoutput);
            }
            objectoutput.writeBoolean(E);
            if (E)
            {
                F.writeExternal(objectoutput);
            }
            objectoutput.writeUTF(H);
            objectoutput.writeInt(J);
            objectoutput.writeUTF(L);
            objectoutput.writeBoolean(M);
            if (M)
            {
                objectoutput.writeUTF(N);
            }
            objectoutput.writeBoolean(O);
            if (O)
            {
                objectoutput.writeUTF(P);
            }
            objectoutput.writeBoolean(Q);
            if (Q)
            {
                objectoutput.writeUTF(R);
            }
            objectoutput.writeBoolean(S);
            if (S)
            {
                objectoutput.writeUTF(T);
            }
            objectoutput.writeBoolean(U);
            if (U)
            {
                objectoutput.writeUTF(V);
            }
            objectoutput.writeBoolean(X);
            int j1 = u();
            objectoutput.writeInt(j1);
            for (int k1 = 0; k1 < j1; k1++)
            {
                ((NumberFormat)Y.get(k1)).writeExternal(objectoutput);
            }

            int l1 = w();
            objectoutput.writeInt(l1);
            for (; i1 < l1; i1++)
            {
                ((NumberFormat)Z.get(i1)).writeExternal(objectoutput);
            }

            objectoutput.writeBoolean(ab);
            objectoutput.writeBoolean(ac);
            if (ac)
            {
                objectoutput.writeUTF(ad);
            }
            objectoutput.writeBoolean(af);
            objectoutput.writeBoolean(ah);
        }

        public boolean x()
        {
            return ac;
        }

        public String y()
        {
            return ad;
        }

        public PhoneMetadata()
        {
            b = null;
            d = null;
            f = null;
            h = null;
            j = null;
            l = null;
            n = null;
            p = null;
            r = null;
            t = null;
            v = null;
            x = null;
            z = null;
            B = null;
            D = null;
            F = null;
            H = "";
            J = 0;
            L = "";
            N = "";
            P = "";
            R = "";
            T = "";
            V = "";
            X = false;
            Y = new ArrayList();
            Z = new ArrayList();
            ab = false;
            ad = "";
            af = false;
            ah = false;
        }
    }

    public static final class PhoneMetadata.Builder extends PhoneMetadata
    {

        public PhoneMetadata.Builder()
        {
        }
    }

    public static class PhoneMetadataCollection
        implements Externalizable
    {

        private List a;

        public List a()
        {
            return a;
        }

        public int b()
        {
            return a.size();
        }

        public void readExternal(ObjectInput objectinput)
        {
            int i = objectinput.readInt();
            for (int j = 0; j < i; j++)
            {
                PhoneMetadata phonemetadata = new PhoneMetadata();
                phonemetadata.readExternal(objectinput);
                a.add(phonemetadata);
            }

        }

        public void writeExternal(ObjectOutput objectoutput)
        {
            int i = b();
            objectoutput.writeInt(i);
            for (int j = 0; j < i; j++)
            {
                ((PhoneMetadata)a.get(j)).writeExternal(objectoutput);
            }

        }

        public PhoneMetadataCollection()
        {
            a = new ArrayList();
        }
    }

    public static final class PhoneMetadataCollection.Builder extends PhoneMetadataCollection
    {

        public PhoneMetadataCollection.Builder()
        {
        }
    }

    public static class PhoneNumberDesc
        implements Externalizable
    {

        private boolean a;
        private String b;
        private boolean c;
        private String d;
        private boolean e;
        private String f;

        public PhoneNumberDesc a(String s)
        {
            a = true;
            b = s;
            return this;
        }

        public String a()
        {
            return b;
        }

        public PhoneNumberDesc b(String s)
        {
            c = true;
            d = s;
            return this;
        }

        public String b()
        {
            return d;
        }

        public PhoneNumberDesc c(String s)
        {
            e = true;
            f = s;
            return this;
        }

        public void readExternal(ObjectInput objectinput)
        {
            if (objectinput.readBoolean())
            {
                a(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                b(objectinput.readUTF());
            }
            if (objectinput.readBoolean())
            {
                c(objectinput.readUTF());
            }
        }

        public void writeExternal(ObjectOutput objectoutput)
        {
            objectoutput.writeBoolean(a);
            if (a)
            {
                objectoutput.writeUTF(b);
            }
            objectoutput.writeBoolean(c);
            if (c)
            {
                objectoutput.writeUTF(d);
            }
            objectoutput.writeBoolean(e);
            if (e)
            {
                objectoutput.writeUTF(f);
            }
        }

        public PhoneNumberDesc()
        {
            b = "";
            d = "";
            f = "";
        }
    }

    public static final class PhoneNumberDesc.Builder extends PhoneNumberDesc
    {

        public PhoneNumberDesc.Builder()
        {
        }
    }


    private Phonemetadata()
    {
    }
}
