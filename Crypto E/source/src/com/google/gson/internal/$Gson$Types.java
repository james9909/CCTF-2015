// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class canonicalize
{
    static final class GenericArrayTypeImpl
        implements Serializable, GenericArrayType
    {

        private final Type a;

        public boolean equals(Object obj)
        {
            return (obj instanceof GenericArrayType) && .Gson.Types.equals(this, (GenericArrayType)obj);
        }

        public Type getGenericComponentType()
        {
            return a;
        }

        public int hashCode()
        {
            return a.hashCode();
        }

        public String toString()
        {
            return (new StringBuilder()).append(.Gson.Types.typeToString(a)).append("[]").toString();
        }

        public GenericArrayTypeImpl(Type type)
        {
            a = .Gson.Types.canonicalize(type);
        }
    }

    static final class ParameterizedTypeImpl
        implements Serializable, ParameterizedType
    {

        private final Type a;
        private final Type b;
        private final Type c[];

        public boolean equals(Object obj)
        {
            return (obj instanceof ParameterizedType) && .Gson.Types.equals(this, (ParameterizedType)obj);
        }

        public Type[] getActualTypeArguments()
        {
            return (Type[])c.clone();
        }

        public Type getOwnerType()
        {
            return a;
        }

        public Type getRawType()
        {
            return b;
        }

        public int hashCode()
        {
            return Arrays.hashCode(c) ^ b.hashCode() ^ .Gson.Types.a(a);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder(30 * (1 + c.length));
            stringbuilder.append(.Gson.Types.typeToString(b));
            if (c.length == 0)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append("<").append(.Gson.Types.typeToString(c[0]));
            for (int i = 1; i < c.length; i++)
            {
                stringbuilder.append(", ").append(.Gson.Types.typeToString(c[i]));
            }

            return stringbuilder.append(">").toString();
        }

        public transient ParameterizedTypeImpl(Type type, Type type1, Type atype[])
        {
            boolean flag = true;
            int i = 0;
            super();
            Type type2;
            if (type1 instanceof Class)
            {
                Class class1 = (Class)type1;
                boolean flag1;
                if (type != null || class1.getEnclosingClass() == null)
                {
                    flag1 = flag;
                } else
                {
                    flag1 = false;
                }
                .Gson.Preconditions.checkArgument(flag1);
                if (type != null && class1.getEnclosingClass() == null)
                {
                    flag = false;
                }
                .Gson.Preconditions.checkArgument(flag);
            }
            if (type == null)
            {
                type2 = null;
            } else
            {
                type2 = .Gson.Types.canonicalize(type);
            }
            a = type2;
            b = .Gson.Types.canonicalize(type1);
            for (c = (Type[])atype.clone(); i < c.length; i++)
            {
                .Gson.Preconditions.checkNotNull(c[i]);
                .Gson.Types.a(c[i]);
                c[i] = .Gson.Types.canonicalize(c[i]);
            }

        }
    }

    static final class WildcardTypeImpl
        implements Serializable, WildcardType
    {

        private final Type a;
        private final Type b;

        public boolean equals(Object obj)
        {
            return (obj instanceof WildcardType) && .Gson.Types.equals(this, (WildcardType)obj);
        }

        public Type[] getLowerBounds()
        {
            if (b != null)
            {
                Type atype[] = new Type[1];
                atype[0] = b;
                return atype;
            } else
            {
                return .Gson.Types.a;
            }
        }

        public Type[] getUpperBounds()
        {
            Type atype[] = new Type[1];
            atype[0] = a;
            return atype;
        }

        public int hashCode()
        {
            int i;
            if (b != null)
            {
                i = 31 + b.hashCode();
            } else
            {
                i = 1;
            }
            return i ^ 31 + a.hashCode();
        }

        public String toString()
        {
            if (b != null)
            {
                return (new StringBuilder()).append("? super ").append(.Gson.Types.typeToString(b)).toString();
            }
            if (a == java/lang/Object)
            {
                return "?";
            } else
            {
                return (new StringBuilder()).append("? extends ").append(.Gson.Types.typeToString(a)).toString();
            }
        }

        public WildcardTypeImpl(Type atype[], Type atype1[])
        {
            boolean flag = true;
            super();
            boolean flag1;
            boolean flag2;
            if (atype1.length <= flag)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            .Gson.Preconditions.checkArgument(flag1);
            if (atype.length == flag)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            .Gson.Preconditions.checkArgument(flag2);
            if (atype1.length == flag)
            {
                .Gson.Preconditions.checkNotNull(atype1[0]);
                .Gson.Types.a(atype1[0]);
                if (atype[0] != java/lang/Object)
                {
                    flag = false;
                }
                .Gson.Preconditions.checkArgument(flag);
                b = .Gson.Types.canonicalize(atype1[0]);
                a = java/lang/Object;
                return;
            } else
            {
                .Gson.Preconditions.checkNotNull(atype[0]);
                .Gson.Types.a(atype[0]);
                b = null;
                a = .Gson.Types.canonicalize(atype[0]);
                return;
            }
        }
    }


    static final Type a[] = new Type[0];

    static int a(Object obj)
    {
        return b(obj);
    }

    private static int a(Object aobj[], Object obj)
    {
        for (int i = 0; i < aobj.length; i++)
        {
            if (obj.equals(aobj[i]))
            {
                return i;
            }
        }

        throw new NoSuchElementException();
    }

    private static Class a(TypeVariable typevariable)
    {
        java.lang.reflect.GenericDeclaration genericdeclaration = typevariable.getGenericDeclaration();
        if (genericdeclaration instanceof Class)
        {
            return (Class)genericdeclaration;
        } else
        {
            return null;
        }
    }

    static Type a(Type type, Class class1, Class class2)
    {
        if (class2 == class1)
        {
            return type;
        }
        if (class2.isInterface())
        {
            Class aclass[] = class1.getInterfaces();
            int i = 0;
            for (int j = aclass.length; i < j; i++)
            {
                if (aclass[i] == class2)
                {
                    return class1.getGenericInterfaces()[i];
                }
                if (class2.isAssignableFrom(aclass[i]))
                {
                    return a(class1.getGenericInterfaces()[i], aclass[i], class2);
                }
            }

        }
        if (!class1.isInterface())
        {
            Class class3;
            for (; class1 != java/lang/Object; class1 = class3)
            {
                class3 = class1.getSuperclass();
                if (class3 == class2)
                {
                    return class1.getGenericSuperclass();
                }
                if (class2.isAssignableFrom(class3))
                {
                    return a(class1.getGenericSuperclass(), class3, class2);
                }
            }

        }
        return class2;
    }

    static Type a(Type type, Class class1, TypeVariable typevariable)
    {
        Class class2 = a(typevariable);
        Type type1;
        if (class2 != null)
        {
            if ((type1 = a(type, class1, class2)) instanceof ParameterizedType)
            {
                int i = a(((Object []) (class2.getTypeParameters())), typevariable);
                return ((ParameterizedType)type1).getActualTypeArguments()[i];
            }
        }
        return typevariable;
    }

    static void a(Type type)
    {
        b(type);
    }

    static boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    public static GenericArrayType arrayOf(Type type)
    {
        return new GenericArrayTypeImpl(type);
    }

    private static int b(Object obj)
    {
        if (obj != null)
        {
            return obj.hashCode();
        } else
        {
            return 0;
        }
    }

    static Type b(Type type, Class class1, Class class2)
    {
        ditions.checkArgument(class2.isAssignableFrom(class1));
        return resolve(type, class1, a(type, class1, class2));
    }

    private static void b(Type type)
    {
        boolean flag;
        if (!(type instanceof Class) || !((Class)type).isPrimitive())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ditions.checkArgument(flag);
    }

    public static Type canonicalize(Type type)
    {
        if (type instanceof Class)
        {
            Class class1 = (Class)type;
            Object obj;
            if (class1.isArray())
            {
                obj = new GenericArrayTypeImpl(canonicalize(((Type) (class1.getComponentType()))));
            } else
            {
                obj = class1;
            }
            return (Type)obj;
        }
        if (type instanceof ParameterizedType)
        {
            ParameterizedType parameterizedtype = (ParameterizedType)type;
            return new ParameterizedTypeImpl(parameterizedtype.getOwnerType(), parameterizedtype.getRawType(), parameterizedtype.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType)
        {
            return new GenericArrayTypeImpl(((GenericArrayType)type).getGenericComponentType());
        }
        if (type instanceof WildcardType)
        {
            WildcardType wildcardtype = (WildcardType)type;
            return new WildcardTypeImpl(wildcardtype.getUpperBounds(), wildcardtype.getLowerBounds());
        } else
        {
            return type;
        }
    }

    public static boolean equals(Type type, Type type1)
    {
        boolean flag = true;
        if (type != type1) goto _L2; else goto _L1
_L1:
        boolean flag2 = flag;
_L4:
        return flag2;
_L2:
        if (type instanceof Class)
        {
            return type.equals(type1);
        }
        if (!(type instanceof ParameterizedType))
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag6 = type1 instanceof ParameterizedType;
        flag2 = false;
        if (flag6)
        {
            ParameterizedType parameterizedtype = (ParameterizedType)type;
            ParameterizedType parameterizedtype1 = (ParameterizedType)type1;
            if (!a(parameterizedtype.getOwnerType(), parameterizedtype1.getOwnerType()) || !parameterizedtype.getRawType().equals(parameterizedtype1.getRawType()) || !Arrays.equals(parameterizedtype.getActualTypeArguments(), parameterizedtype1.getActualTypeArguments()))
            {
                flag = false;
            }
            return flag;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!(type instanceof GenericArrayType))
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag5 = type1 instanceof GenericArrayType;
        flag2 = false;
        if (flag5)
        {
            GenericArrayType genericarraytype = (GenericArrayType)type;
            GenericArrayType genericarraytype1 = (GenericArrayType)type1;
            return equals(genericarraytype.getGenericComponentType(), genericarraytype1.getGenericComponentType());
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (!(type instanceof WildcardType))
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag4 = type1 instanceof WildcardType;
        flag2 = false;
        if (flag4)
        {
            WildcardType wildcardtype = (WildcardType)type;
            WildcardType wildcardtype1 = (WildcardType)type1;
            if (!Arrays.equals(wildcardtype.getUpperBounds(), wildcardtype1.getUpperBounds()) || !Arrays.equals(wildcardtype.getLowerBounds(), wildcardtype1.getLowerBounds()))
            {
                flag = false;
            }
            return flag;
        }
        if (true) goto _L4; else goto _L6
_L6:
        boolean flag1 = type instanceof TypeVariable;
        flag2 = false;
        if (flag1)
        {
            boolean flag3 = type1 instanceof TypeVariable;
            flag2 = false;
            if (flag3)
            {
                TypeVariable typevariable = (TypeVariable)type;
                TypeVariable typevariable1 = (TypeVariable)type1;
                if (typevariable.getGenericDeclaration() != typevariable1.getGenericDeclaration() || !typevariable.getName().equals(typevariable1.getName()))
                {
                    flag = false;
                }
                return flag;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    public static Type getArrayComponentType(Type type)
    {
        if (type instanceof GenericArrayType)
        {
            return ((GenericArrayType)type).getGenericComponentType();
        } else
        {
            return ((Class)type).getComponentType();
        }
    }

    public static Type getCollectionElementType(Type type, Class class1)
    {
        Type type1 = b(type, class1, java/util/Collection);
        if (type1 instanceof WildcardType)
        {
            type1 = ((WildcardType)type1).getUpperBounds()[0];
        }
        if (type1 instanceof ParameterizedType)
        {
            return ((ParameterizedType)type1).getActualTypeArguments()[0];
        } else
        {
            return java/lang/Object;
        }
    }

    public static Type[] getMapKeyAndValueTypes(Type type, Class class1)
    {
        if (type == java/util/Properties)
        {
            return (new Type[] {
                java/lang/String, java/lang/String
            });
        }
        Type type1 = b(type, class1, java/util/Map);
        if (type1 instanceof ParameterizedType)
        {
            return ((ParameterizedType)type1).getActualTypeArguments();
        } else
        {
            return (new Type[] {
                java/lang/Object, java/lang/Object
            });
        }
    }

    public static Class getRawType(Type type)
    {
        if (type instanceof Class)
        {
            return (Class)type;
        }
        if (type instanceof ParameterizedType)
        {
            Type type1 = ((ParameterizedType)type).getRawType();
            ditions.checkArgument(type1 instanceof Class);
            return (Class)type1;
        }
        if (type instanceof GenericArrayType)
        {
            return Array.newInstance(getRawType(((GenericArrayType)type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable)
        {
            return java/lang/Object;
        }
        if (type instanceof WildcardType)
        {
            return getRawType(((WildcardType)type).getUpperBounds()[0]);
        }
        String s;
        if (type == null)
        {
            s = "null";
        } else
        {
            s = type.getClass().getName();
        }
        throw new IllegalArgumentException((new StringBuilder()).append("Expected a Class, ParameterizedType, or GenericArrayType, but <").append(type).append("> is of type ").append(s).toString());
    }

    public static transient ParameterizedType newParameterizedTypeWithOwner(Type type, Type type1, Type atype[])
    {
        return new ParameterizedTypeImpl(type, type1, atype);
    }

    public static Type resolve(Type type, Class class1, Type type1)
    {
        Object obj = type1;
_L14:
        if (!(obj instanceof TypeVariable)) goto _L2; else goto _L1
_L1:
        TypeVariable typevariable;
        Type type10;
        typevariable = (TypeVariable)obj;
        type10 = a(type, class1, typevariable);
        if (type10 != typevariable) goto _L4; else goto _L3
_L3:
        obj = type10;
_L6:
        return ((Type) (obj));
_L4:
        obj = type10;
        continue; /* Loop/switch isn't completed */
_L2:
        if (!(obj instanceof Class) || !((Class)obj).isArray())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (Class)obj;
        Class class2 = ((Class) (obj)).getComponentType();
        Type type9 = resolve(type, class1, ((Type) (class2)));
        if (class2 != type9)
        {
            return arrayOf(type9);
        }
        if (true) goto _L6; else goto _L5
_L5:
        if (!(obj instanceof GenericArrayType))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (GenericArrayType)obj;
        Type type7 = ((GenericArrayType) (obj)).getGenericComponentType();
        Type type8 = resolve(type, class1, type7);
        if (type7 != type8)
        {
            return arrayOf(type8);
        }
        if (true) goto _L6; else goto _L7
_L7:
        Type type5;
        boolean flag1;
        Type atype3[];
        if (!(obj instanceof ParameterizedType))
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = (ParameterizedType)obj;
        Type type4 = ((ParameterizedType) (obj)).getOwnerType();
        type5 = resolve(type, class1, type4);
        boolean flag;
        Type atype2[];
        int i;
        if (type5 != type4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        atype2 = ((ParameterizedType) (obj)).getActualTypeArguments();
        i = atype2.length;
        flag1 = flag;
        atype3 = atype2;
        for (int j = 0; j < i; j++)
        {
            Type type6 = resolve(type, class1, atype3[j]);
            if (type6 == atype3[j])
            {
                continue;
            }
            if (!flag1)
            {
                atype3 = (Type[])atype3.clone();
                flag1 = true;
            }
            atype3[j] = type6;
        }

        if (!flag1) goto _L6; else goto _L8
_L8:
        return newParameterizedTypeWithOwner(type5, ((ParameterizedType) (obj)).getRawType(), atype3);
        if (!(obj instanceof WildcardType)) goto _L6; else goto _L9
_L9:
        Type atype[];
        Type atype1[];
        Type type3;
        obj = (WildcardType)obj;
        atype = ((WildcardType) (obj)).getLowerBounds();
        atype1 = ((WildcardType) (obj)).getUpperBounds();
        if (atype.length != 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        type3 = resolve(type, class1, atype[0]);
        if (type3 == atype[0]) goto _L6; else goto _L10
_L10:
        return supertypeOf(type3);
        if (atype1.length != 1) goto _L6; else goto _L11
_L11:
        Type type2 = resolve(type, class1, atype1[0]);
        if (type2 == atype1[0]) goto _L6; else goto _L12
_L12:
        return subtypeOf(type2);
        if (true) goto _L14; else goto _L13
_L13:
    }

    public static WildcardType subtypeOf(Type type)
    {
        return new WildcardTypeImpl(new Type[] {
            type
        }, a);
    }

    public static WildcardType supertypeOf(Type type)
    {
        return new WildcardTypeImpl(new Type[] {
            java/lang/Object
        }, new Type[] {
            type
        });
    }

    public static String typeToString(Type type)
    {
        if (type instanceof Class)
        {
            return ((Class)type).getName();
        } else
        {
            return type.toString();
        }
    }


    private canonicalize()
    {
    }
}
