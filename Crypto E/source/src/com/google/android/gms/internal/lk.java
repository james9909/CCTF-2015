// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            mb, lu, mc, lm, 
//            lr, lf, lo

public abstract class lk
{
    public static class a
        implements SafeParcelable
    {

        public static final lm CREATOR = new lm();
        private final int DN;
        protected final int Vb;
        protected final boolean Vc;
        protected final int Vd;
        protected final boolean Ve;
        protected final String Vf;
        protected final int Vg;
        protected final Class Vh;
        protected final String Vi;
        private lo Vj;
        private b Vk;

        public static a a(String s1, int i, b b1, boolean flag)
        {
            return new a(b1.jS(), flag, b1.jT(), false, s1, i, null, b1);
        }

        public static a a(String s1, int i, Class class1)
        {
            return new a(11, false, 11, false, s1, i, class1, null);
        }

        public static a b(String s1, int i, Class class1)
        {
            return new a(11, true, 11, true, s1, i, class1, null);
        }

        static b c(a a1)
        {
            return a1.Vk;
        }

        public static a j(String s1, int i)
        {
            return new a(0, false, 0, false, s1, i, null, null);
        }

        public static a k(String s1, int i)
        {
            return new a(4, false, 4, false, s1, i, null, null);
        }

        public static a l(String s1, int i)
        {
            return new a(6, false, 6, false, s1, i, null, null);
        }

        public static a m(String s1, int i)
        {
            return new a(7, false, 7, false, s1, i, null, null);
        }

        public static a n(String s1, int i)
        {
            return new a(7, true, 7, true, s1, i, null, null);
        }

        public void a(lo lo1)
        {
            Vj = lo1;
        }

        public Object convertBack(Object obj)
        {
            return Vk.convertBack(obj);
        }

        public int describeContents()
        {
            lm _tmp = CREATOR;
            return 0;
        }

        public int getVersionCode()
        {
            return DN;
        }

        public int jS()
        {
            return Vb;
        }

        public int jT()
        {
            return Vd;
        }

        public a jX()
        {
            return new a(DN, Vb, Vc, Vd, Ve, Vf, Vg, Vi, kf());
        }

        public boolean jY()
        {
            return Vc;
        }

        public boolean jZ()
        {
            return Ve;
        }

        public String ka()
        {
            return Vf;
        }

        public int kb()
        {
            return Vg;
        }

        public Class kc()
        {
            return Vh;
        }

        String kd()
        {
            if (Vi == null)
            {
                return null;
            } else
            {
                return Vi;
            }
        }

        public boolean ke()
        {
            return Vk != null;
        }

        lf kf()
        {
            if (Vk == null)
            {
                return null;
            } else
            {
                return lf.a(Vk);
            }
        }

        public HashMap kg()
        {
            s.l(Vi);
            s.l(Vj);
            return Vj.bn(Vi);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("Field\n");
            stringbuilder.append("            versionCode=").append(DN).append('\n');
            stringbuilder.append("                 typeIn=").append(Vb).append('\n');
            stringbuilder.append("            typeInArray=").append(Vc).append('\n');
            stringbuilder.append("                typeOut=").append(Vd).append('\n');
            stringbuilder.append("           typeOutArray=").append(Ve).append('\n');
            stringbuilder.append("        outputFieldName=").append(Vf).append('\n');
            stringbuilder.append("      safeParcelFieldId=").append(Vg).append('\n');
            stringbuilder.append("       concreteTypeName=").append(kd()).append('\n');
            if (kc() != null)
            {
                stringbuilder.append("     concreteType.class=").append(kc().getCanonicalName()).append('\n');
            }
            StringBuilder stringbuilder1 = stringbuilder.append("          converterName=");
            String s1;
            if (Vk == null)
            {
                s1 = "null";
            } else
            {
                s1 = Vk.getClass().getCanonicalName();
            }
            stringbuilder1.append(s1).append('\n');
            return stringbuilder.toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            lm _tmp = CREATOR;
            lm.a(this, parcel, i);
        }


        a(int i, int i1, boolean flag, int j1, boolean flag1, String s1, int k1, 
                String s2, lf lf1)
        {
            DN = i;
            Vb = i1;
            Vc = flag;
            Vd = j1;
            Ve = flag1;
            Vf = s1;
            Vg = k1;
            if (s2 == null)
            {
                Vh = null;
                Vi = null;
            } else
            {
                Vh = com/google/android/gms/internal/lr;
                Vi = s2;
            }
            if (lf1 == null)
            {
                Vk = null;
                return;
            } else
            {
                Vk = lf1.jQ();
                return;
            }
        }

        protected a(int i, boolean flag, int i1, boolean flag1, String s1, int j1, Class class1, 
                b b1)
        {
            DN = 1;
            Vb = i;
            Vc = flag;
            Vd = i1;
            Ve = flag1;
            Vf = s1;
            Vg = j1;
            Vh = class1;
            if (class1 == null)
            {
                Vi = null;
            } else
            {
                Vi = class1.getCanonicalName();
            }
            Vk = b1;
        }
    }

    public static interface b
    {

        public abstract Object convertBack(Object obj);

        public abstract int jS();

        public abstract int jT();
    }


    public lk()
    {
    }

    private void a(StringBuilder stringbuilder, a a1, Object obj)
    {
        if (a1.jS() == 11)
        {
            stringbuilder.append(((lk)a1.kc().cast(obj)).toString());
            return;
        }
        if (a1.jS() == 7)
        {
            stringbuilder.append("\"");
            stringbuilder.append(mb.bo((String)obj));
            stringbuilder.append("\"");
            return;
        } else
        {
            stringbuilder.append(obj);
            return;
        }
    }

    private void a(StringBuilder stringbuilder, a a1, ArrayList arraylist)
    {
        stringbuilder.append("[");
        int i = 0;
        for (int j = arraylist.size(); i < j; i++)
        {
            if (i > 0)
            {
                stringbuilder.append(",");
            }
            Object obj = arraylist.get(i);
            if (obj != null)
            {
                a(stringbuilder, a1, obj);
            }
        }

        stringbuilder.append("]");
    }

    protected Object a(a a1, Object obj)
    {
        if (a.c(a1) != null)
        {
            obj = a1.convertBack(obj);
        }
        return obj;
    }

    protected boolean a(a a1)
    {
        if (a1.jT() == 11)
        {
            if (a1.jZ())
            {
                return bm(a1.ka());
            } else
            {
                return bl(a1.ka());
            }
        } else
        {
            return bk(a1.ka());
        }
    }

    protected Object b(a a1)
    {
        String s1 = a1.ka();
        if (a1.kc() != null)
        {
            boolean flag;
            Object aobj[];
            HashMap hashmap;
            if (bj(a1.ka()) == null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            aobj = new Object[1];
            aobj[0] = a1.ka();
            s.a(flag, "Concrete field shouldn't be value object: %s", aobj);
            if (a1.jZ())
            {
                hashmap = jW();
            } else
            {
                hashmap = jV();
            }
            if (hashmap != null)
            {
                return hashmap.get(s1);
            }
            Object obj;
            try
            {
                String s2 = (new StringBuilder()).append("get").append(Character.toUpperCase(s1.charAt(0))).append(s1.substring(1)).toString();
                obj = getClass().getMethod(s2, new Class[0]).invoke(this, new Object[0]);
            }
            catch (Exception exception)
            {
                throw new RuntimeException(exception);
            }
            return obj;
        } else
        {
            return bj(a1.ka());
        }
    }

    protected abstract Object bj(String s1);

    protected abstract boolean bk(String s1);

    protected boolean bl(String s1)
    {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean bm(String s1)
    {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public abstract HashMap jU();

    public HashMap jV()
    {
        return null;
    }

    public HashMap jW()
    {
        return null;
    }

    public String toString()
    {
        HashMap hashmap = jU();
        StringBuilder stringbuilder = new StringBuilder(100);
        Iterator iterator = hashmap.keySet().iterator();
label0:
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                a a1 = (a)hashmap.get(s1);
                if (a(a1))
                {
                    Object obj = a(a1, b(a1));
                    if (stringbuilder.length() == 0)
                    {
                        stringbuilder.append("{");
                    } else
                    {
                        stringbuilder.append(",");
                    }
                    stringbuilder.append("\"").append(s1).append("\":");
                    if (obj == null)
                    {
                        stringbuilder.append("null");
                    } else
                    {
                        switch (a1.jT())
                        {
                        default:
                            if (a1.jY())
                            {
                                a(stringbuilder, a1, (ArrayList)obj);
                            } else
                            {
                                a(stringbuilder, a1, obj);
                            }
                            break;

                        case 8: // '\b'
                            stringbuilder.append("\"").append(lu.d((byte[])(byte[])obj)).append("\"");
                            break;

                        case 9: // '\t'
                            stringbuilder.append("\"").append(lu.e((byte[])(byte[])obj)).append("\"");
                            break;

                        case 10: // '\n'
                            mc.a(stringbuilder, (HashMap)obj);
                            break;
                        }
                        continue label0;
                    }
                }
            } while (true);
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("}");
            } else
            {
                stringbuilder.append("{}");
            }
            return stringbuilder.toString();
        } while (true);
    }
}
