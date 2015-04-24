// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.Validate;
import org.apache.commons.lang3.builder.Builder;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            Typed

public class TypeUtils
{
    static final class GenericArrayTypeImpl
        implements GenericArrayType
    {

        private final Type componentType;

        public boolean equals(Object obj)
        {
            return obj == this || (obj instanceof GenericArrayType) && TypeUtils.equals(this, (GenericArrayType)obj);
        }

        public Type getGenericComponentType()
        {
            return componentType;
        }

        public int hashCode()
        {
            return 0x430 | componentType.hashCode();
        }

        public String toString()
        {
            return TypeUtils.toString(this);
        }

        private GenericArrayTypeImpl(Type type)
        {
            componentType = type;
        }

    }

    static final class ParameterizedTypeImpl
        implements ParameterizedType
    {

        private final Class raw;
        private final Type typeArguments[];
        private final Type useOwner;

        public boolean equals(Object obj)
        {
            return obj == this || (obj instanceof ParameterizedType) && TypeUtils.equals(this, (ParameterizedType)obj);
        }

        public Type[] getActualTypeArguments()
        {
            return (Type[])typeArguments.clone();
        }

        public Type getOwnerType()
        {
            return useOwner;
        }

        public Type getRawType()
        {
            return raw;
        }

        public int hashCode()
        {
            return ((0x470 | raw.hashCode()) << 4 | ObjectUtils.hashCode(useOwner)) << 8 | Arrays.hashCode(typeArguments);
        }

        public String toString()
        {
            return TypeUtils.toString(this);
        }

        private ParameterizedTypeImpl(Class class1, Type type, Type atype[])
        {
            raw = class1;
            useOwner = type;
            typeArguments = atype;
        }

    }

    public static class WildcardTypeBuilder
        implements Builder
    {

        private Type lowerBounds[];
        private Type upperBounds[];

        public volatile Object build()
        {
            return build();
        }

        public WildcardType build()
        {
            return new WildcardTypeImpl(upperBounds, lowerBounds);
        }

        public transient WildcardTypeBuilder withLowerBounds(Type atype[])
        {
            lowerBounds = atype;
            return this;
        }

        public transient WildcardTypeBuilder withUpperBounds(Type atype[])
        {
            upperBounds = atype;
            return this;
        }

        private WildcardTypeBuilder()
        {
        }

    }

    static final class WildcardTypeImpl
        implements WildcardType
    {

        private static final Type EMPTY_BOUNDS[] = new Type[0];
        private final Type lowerBounds[];
        private final Type upperBounds[];

        public boolean equals(Object obj)
        {
            return obj == this || (obj instanceof WildcardType) && TypeUtils.equals(this, (WildcardType)obj);
        }

        public Type[] getLowerBounds()
        {
            return (Type[])lowerBounds.clone();
        }

        public Type[] getUpperBounds()
        {
            return (Type[])upperBounds.clone();
        }

        public int hashCode()
        {
            return (0x4900 | Arrays.hashCode(upperBounds)) << 8 | Arrays.hashCode(lowerBounds);
        }

        public String toString()
        {
            return TypeUtils.toString(this);
        }


        private WildcardTypeImpl(Type atype[], Type atype1[])
        {
            upperBounds = (Type[])ObjectUtils.defaultIfNull(atype, EMPTY_BOUNDS);
            lowerBounds = (Type[])ObjectUtils.defaultIfNull(atype1, EMPTY_BOUNDS);
        }

    }


    public static final WildcardType WILDCARD_ALL = wildcardType().withUpperBounds(new Type[] {
        java/lang/Object
    }).build();

    public TypeUtils()
    {
    }

    private static transient StringBuilder appendAllTo(StringBuilder stringbuilder, String s, Type atype[])
    {
        Validate.notEmpty(Validate.noNullElements(atype));
        if (atype.length > 0)
        {
            stringbuilder.append(toString(atype[0]));
            for (int i = 1; i < atype.length; i++)
            {
                stringbuilder.append(s).append(toString(atype[i]));
            }

        }
        return stringbuilder;
    }

    private static String classToString(Class class1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (class1.getEnclosingClass() != null)
        {
            stringbuilder.append(classToString(class1.getEnclosingClass())).append('.').append(class1.getSimpleName());
        } else
        {
            stringbuilder.append(class1.getName());
        }
        if (class1.getTypeParameters().length > 0)
        {
            stringbuilder.append('<');
            appendAllTo(stringbuilder, ", ", class1.getTypeParameters());
            stringbuilder.append('>');
        }
        return stringbuilder.toString();
    }

    public static boolean containsTypeVariables(Type type)
    {
        if (!(type instanceof TypeVariable)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(type instanceof Class))
        {
            break; /* Loop/switch isn't completed */
        }
        if (((Class)type).getTypeParameters().length <= 0)
        {
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!(type instanceof ParameterizedType))
        {
            break MISSING_BLOCK_LABEL_81;
        }
        Type atype[] = ((ParameterizedType)type).getActualTypeArguments();
        int i = atype.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                break; /* Loop/switch isn't completed */
            }
            if (containsTypeVariables(atype[j]))
            {
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while (true);
        if (true) goto _L1; else goto _L4
_L4:
        return false;
label0:
        {
            boolean flag;
label1:
            {
                if (!(type instanceof WildcardType))
                {
                    break label0;
                }
                WildcardType wildcardtype = (WildcardType)type;
                if (!containsTypeVariables(getImplicitLowerBounds(wildcardtype)[0]))
                {
                    boolean flag1 = containsTypeVariables(getImplicitUpperBounds(wildcardtype)[0]);
                    flag = false;
                    if (!flag1)
                    {
                        break label1;
                    }
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    public static Map determineTypeArguments(Class class1, ParameterizedType parameterizedtype)
    {
        Validate.notNull(class1, "cls is null", new Object[0]);
        Validate.notNull(parameterizedtype, "superType is null", new Object[0]);
        Class class2 = getRawType(parameterizedtype);
        if (!isAssignable(class1, class2))
        {
            return null;
        }
        if (class1.equals(class2))
        {
            return getTypeArguments(parameterizedtype, class2, null);
        }
        Type type = getClosestParentType(class1, class2);
        if (type instanceof Class)
        {
            return determineTypeArguments((Class)type, parameterizedtype);
        } else
        {
            ParameterizedType parameterizedtype1 = (ParameterizedType)type;
            Map map = determineTypeArguments(getRawType(parameterizedtype1), parameterizedtype);
            mapTypeVariablesToArguments(class1, parameterizedtype1, map);
            return map;
        }
    }

    private static boolean equals(GenericArrayType genericarraytype, Type type)
    {
        return (type instanceof GenericArrayType) && equals(genericarraytype.getGenericComponentType(), ((GenericArrayType)type).getGenericComponentType());
    }

    private static boolean equals(ParameterizedType parameterizedtype, Type type)
    {
        if (type instanceof ParameterizedType)
        {
            ParameterizedType parameterizedtype1 = (ParameterizedType)type;
            if (equals(parameterizedtype.getRawType(), parameterizedtype1.getRawType()) && equals(parameterizedtype.getOwnerType(), parameterizedtype1.getOwnerType()))
            {
                return equals(parameterizedtype.getActualTypeArguments(), parameterizedtype1.getActualTypeArguments());
            }
        }
        return false;
    }

    public static boolean equals(Type type, Type type1)
    {
        if (ObjectUtils.equals(type, type1))
        {
            return true;
        }
        if (type instanceof ParameterizedType)
        {
            return equals((ParameterizedType)type, type1);
        }
        if (type instanceof GenericArrayType)
        {
            return equals((GenericArrayType)type, type1);
        }
        if (type instanceof WildcardType)
        {
            return equals((WildcardType)type, type1);
        } else
        {
            return false;
        }
    }

    private static boolean equals(WildcardType wildcardtype, Type type)
    {
label0:
        {
            if (type instanceof WildcardType)
            {
                WildcardType wildcardtype1 = (WildcardType)type;
                if (!equals(wildcardtype.getLowerBounds(), wildcardtype1.getLowerBounds()) || !equals(getImplicitUpperBounds(wildcardtype), getImplicitUpperBounds(wildcardtype1)))
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    private static boolean equals(Type atype[], Type atype1[])
    {
        if (atype.length != atype1.length) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if (i >= atype.length)
        {
            break; /* Loop/switch isn't completed */
        }
        if (equals(atype[i], atype1[i])) goto _L3; else goto _L2
_L2:
        return false;
_L3:
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        return true;
    }

    private static Type[] extractTypeArgumentsFrom(Map map, TypeVariable atypevariable[])
    {
        Type atype[] = new Type[atypevariable.length];
        int i = atypevariable.length;
        int j = 0;
        int l;
        for (int k = 0; j < i; k = l)
        {
            TypeVariable typevariable = atypevariable[j];
            boolean flag = map.containsKey(typevariable);
            Object aobj[] = new Object[1];
            aobj[0] = toString(typevariable);
            Validate.isTrue(flag, "missing argument mapping for %s", aobj);
            l = k + 1;
            atype[k] = (Type)map.get(typevariable);
            j++;
        }

        return atype;
    }

    public static GenericArrayType genericArrayType(Type type)
    {
        return new GenericArrayTypeImpl((Type)Validate.notNull(type, "componentType is null", new Object[0]));
    }

    private static String genericArrayTypeToString(GenericArrayType genericarraytype)
    {
        Object aobj[] = new Object[1];
        aobj[0] = toString(genericarraytype.getGenericComponentType());
        return String.format("%s[]", aobj);
    }

    public static Type getArrayComponentType(Type type)
    {
        Class class1;
        if (type instanceof Class)
        {
            Class class2 = (Class)type;
            boolean flag1 = class2.isArray();
            class1 = null;
            if (flag1)
            {
                class1 = class2.getComponentType();
            }
        } else
        {
            boolean flag = type instanceof GenericArrayType;
            class1 = null;
            if (flag)
            {
                return ((GenericArrayType)type).getGenericComponentType();
            }
        }
        return class1;
    }

    private static Type getClosestParentType(Class class1, Class class2)
    {
        if (class2.isInterface())
        {
            Type atype[] = class1.getGenericInterfaces();
            Type type = null;
            int i = atype.length;
            int j = 0;
            while (j < i) 
            {
                Type type1 = atype[j];
                Class class3;
                if (type1 instanceof ParameterizedType)
                {
                    class3 = getRawType((ParameterizedType)type1);
                } else
                if (type1 instanceof Class)
                {
                    class3 = (Class)type1;
                } else
                {
                    throw new IllegalStateException((new StringBuilder()).append("Unexpected generic interface type found: ").append(type1).toString());
                }
                if (!isAssignable(class3, class2) || !isAssignable(type, class3))
                {
                    type1 = type;
                }
                j++;
                type = type1;
            }
            if (type != null)
            {
                return type;
            }
        }
        return class1.getGenericSuperclass();
    }

    public static Type[] getImplicitBounds(TypeVariable typevariable)
    {
        Validate.notNull(typevariable, "typeVariable is null", new Object[0]);
        Type atype[] = typevariable.getBounds();
        if (atype.length == 0)
        {
            return (new Type[] {
                java/lang/Object
            });
        } else
        {
            return normalizeUpperBounds(atype);
        }
    }

    public static Type[] getImplicitLowerBounds(WildcardType wildcardtype)
    {
        Validate.notNull(wildcardtype, "wildcardType is null", new Object[0]);
        Type atype[] = wildcardtype.getLowerBounds();
        if (atype.length == 0)
        {
            atype = new Type[1];
            atype[0] = null;
        }
        return atype;
    }

    public static Type[] getImplicitUpperBounds(WildcardType wildcardtype)
    {
        Validate.notNull(wildcardtype, "wildcardType is null", new Object[0]);
        Type atype[] = wildcardtype.getUpperBounds();
        if (atype.length == 0)
        {
            return (new Type[] {
                java/lang/Object
            });
        } else
        {
            return normalizeUpperBounds(atype);
        }
    }

    private static Class getRawType(ParameterizedType parameterizedtype)
    {
        Type type = parameterizedtype.getRawType();
        if (!(type instanceof Class))
        {
            throw new IllegalStateException((new StringBuilder()).append("Wait... What!? Type of rawType: ").append(type).toString());
        } else
        {
            return (Class)type;
        }
    }

    public static Class getRawType(Type type, Type type1)
    {
        if (type instanceof Class)
        {
            return (Class)type;
        }
        if (type instanceof ParameterizedType)
        {
            return getRawType((ParameterizedType)type);
        }
        if (type instanceof TypeVariable)
        {
            if (type1 == null)
            {
                return null;
            }
            java.lang.reflect.GenericDeclaration genericdeclaration = ((TypeVariable)type).getGenericDeclaration();
            if (!(genericdeclaration instanceof Class))
            {
                return null;
            }
            Map map = getTypeArguments(type1, (Class)genericdeclaration);
            if (map == null)
            {
                return null;
            }
            Type type2 = (Type)map.get(type);
            if (type2 == null)
            {
                return null;
            } else
            {
                return getRawType(type2, type1);
            }
        }
        if (type instanceof GenericArrayType)
        {
            return Array.newInstance(getRawType(((GenericArrayType)type).getGenericComponentType(), type1), 0).getClass();
        }
        if (type instanceof WildcardType)
        {
            return null;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("unknown type: ").append(type).toString());
        }
    }

    private static Map getTypeArguments(Class class1, Class class2, Map map)
    {
        Object obj;
        if (!isAssignable(class1, class2))
        {
            obj = null;
        } else
        {
            if (class1.isPrimitive())
            {
                if (class2.isPrimitive())
                {
                    return new HashMap();
                }
                class1 = ClassUtils.primitiveToWrapper(class1);
            }
            if (map == null)
            {
                obj = new HashMap();
            } else
            {
                obj = new HashMap(map);
            }
            if (!class2.equals(class1))
            {
                return getTypeArguments(getClosestParentType(class1, class2), class2, ((Map) (obj)));
            }
        }
        return ((Map) (obj));
    }

    public static Map getTypeArguments(ParameterizedType parameterizedtype)
    {
        return getTypeArguments(parameterizedtype, getRawType(parameterizedtype), null);
    }

    private static Map getTypeArguments(ParameterizedType parameterizedtype, Class class1, Map map)
    {
        Class class2 = getRawType(parameterizedtype);
        Object obj;
        if (!isAssignable(class2, class1))
        {
            obj = null;
        } else
        {
            Type type = parameterizedtype.getOwnerType();
            Type atype[];
            TypeVariable atypevariable[];
            if (type instanceof ParameterizedType)
            {
                ParameterizedType parameterizedtype1 = (ParameterizedType)type;
                obj = getTypeArguments(parameterizedtype1, getRawType(parameterizedtype1), map);
            } else
            {
                HashMap hashmap;
                if (map == null)
                {
                    hashmap = new HashMap();
                } else
                {
                    hashmap = new HashMap(map);
                }
                obj = hashmap;
            }
            atype = parameterizedtype.getActualTypeArguments();
            atypevariable = class2.getTypeParameters();
            for (int i = 0; i < atypevariable.length; i++)
            {
                Type type1 = atype[i];
                TypeVariable typevariable = atypevariable[i];
                if (((Map) (obj)).containsKey(type1))
                {
                    type1 = (Type)((Map) (obj)).get(type1);
                }
                ((Map) (obj)).put(typevariable, type1);
            }

            if (!class1.equals(class2))
            {
                return getTypeArguments(getClosestParentType(class2, class1), class1, ((Map) (obj)));
            }
        }
        return ((Map) (obj));
    }

    public static Map getTypeArguments(Type type, Class class1)
    {
        return getTypeArguments(type, class1, null);
    }

    private static Map getTypeArguments(Type type, Class class1, Map map)
    {
        int i = 0;
        if (!(type instanceof Class)) goto _L2; else goto _L1
_L1:
        Map map1 = getTypeArguments((Class)type, class1, map);
_L4:
        return map1;
_L2:
        if (type instanceof ParameterizedType)
        {
            return getTypeArguments((ParameterizedType)type, class1, map);
        }
        if (type instanceof GenericArrayType)
        {
            Type type3 = ((GenericArrayType)type).getGenericComponentType();
            if (class1.isArray())
            {
                class1 = class1.getComponentType();
            }
            return getTypeArguments(type3, class1, map);
        }
        if (type instanceof WildcardType)
        {
            Type atype1[] = getImplicitUpperBounds((WildcardType)type);
            int k = atype1.length;
            do
            {
                map1 = null;
                if (i >= k)
                {
                    continue; /* Loop/switch isn't completed */
                }
                Type type2 = atype1[i];
                if (isAssignable(type2, class1))
                {
                    return getTypeArguments(type2, class1, map);
                }
                i++;
            } while (true);
        }
label0:
        {
            if (!(type instanceof TypeVariable))
            {
                break label0;
            }
            Type atype[] = getImplicitBounds((TypeVariable)type);
            int j = atype.length;
            do
            {
                map1 = null;
                if (i >= j)
                {
                    break;
                }
                Type type1 = atype[i];
                if (isAssignable(type1, class1))
                {
                    return getTypeArguments(type1, class1, map);
                }
                i++;
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        throw new IllegalStateException((new StringBuilder()).append("found an unhandled type: ").append(type).toString());
    }

    public static boolean isArrayType(Type type)
    {
        return (type instanceof GenericArrayType) || (type instanceof Class) && ((Class)type).isArray();
    }

    private static boolean isAssignable(Type type, Class class1)
    {
        if (type != null) goto _L2; else goto _L1
_L1:
        boolean flag;
label0:
        {
            if (class1 != null)
            {
                boolean flag4 = class1.isPrimitive();
                flag = false;
                if (flag4)
                {
                    break label0;
                }
            }
            flag = true;
        }
_L4:
        return flag;
_L2:
        boolean flag3;
        flag = false;
        if (class1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (class1.equals(type))
        {
            return true;
        }
        if (type instanceof Class)
        {
            return ClassUtils.isAssignable((Class)type, class1);
        }
        if (type instanceof ParameterizedType)
        {
            return isAssignable(((Type) (getRawType((ParameterizedType)type))), class1);
        }
        if (type instanceof TypeVariable)
        {
            Type atype[] = ((TypeVariable)type).getBounds();
            int i = atype.length;
            int j = 0;
            do
            {
                flag = false;
                if (j >= i)
                {
                    continue; /* Loop/switch isn't completed */
                }
                if (isAssignable(atype[j], class1))
                {
                    return true;
                }
                j++;
            } while (true);
        }
        if (!(type instanceof GenericArrayType))
        {
            break MISSING_BLOCK_LABEL_187;
        }
        if (class1.equals(java/lang/Object))
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag2 = class1.isArray();
        flag = false;
        if (!flag2)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag3 = isAssignable(((GenericArrayType)type).getGenericComponentType(), class1.getComponentType());
        flag = false;
        if (!flag3) goto _L4; else goto _L3
_L3:
        return true;
        boolean flag1 = type instanceof WildcardType;
        flag = false;
        if (!flag1)
        {
            throw new IllegalStateException((new StringBuilder()).append("found an unhandled type: ").append(type).toString());
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    private static boolean isAssignable(Type type, GenericArrayType genericarraytype, Map map)
    {
        if (type != null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Type type1;
        if (genericarraytype == null)
        {
            return false;
        }
        if (genericarraytype.equals(type))
        {
            continue; /* Loop/switch isn't completed */
        }
        type1 = genericarraytype.getGenericComponentType();
        if (!(type instanceof Class))
        {
            break; /* Loop/switch isn't completed */
        }
        Class class1 = (Class)type;
        if (!class1.isArray() || !isAssignable(((Type) (class1.getComponentType())), type1, map))
        {
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (type instanceof GenericArrayType)
        {
            return isAssignable(((GenericArrayType)type).getGenericComponentType(), type1, map);
        }
        if (type instanceof WildcardType)
        {
            Type atype1[] = getImplicitUpperBounds((WildcardType)type);
            int k = atype1.length;
            for (int l = 0; l < k; l++)
            {
                if (isAssignable(atype1[l], ((Type) (genericarraytype))))
                {
                    continue; /* Loop/switch isn't completed */
                }
            }

            return false;
        }
        if (!(type instanceof TypeVariable))
        {
            break MISSING_BLOCK_LABEL_187;
        }
        Type atype[] = getImplicitBounds((TypeVariable)type);
        int i = atype.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                break; /* Loop/switch isn't completed */
            }
            if (isAssignable(atype[j], ((Type) (genericarraytype))))
            {
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while (true);
        if (true) goto _L1; else goto _L4
_L4:
        return false;
        if (type instanceof ParameterizedType)
        {
            return false;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("found an unhandled type: ").append(type).toString());
        }
    }

    private static boolean isAssignable(Type type, ParameterizedType parameterizedtype, Map map)
    {
        if (type == null)
        {
            return true;
        }
        if (parameterizedtype == null)
        {
            return false;
        }
        if (parameterizedtype.equals(type))
        {
            return true;
        }
        Class class1 = getRawType(parameterizedtype);
        Map map1 = getTypeArguments(type, class1, null);
        if (map1 == null)
        {
            return false;
        }
        if (map1.isEmpty())
        {
            return true;
        }
        Map map2 = getTypeArguments(parameterizedtype, class1, map);
        for (Iterator iterator = map2.keySet().iterator(); iterator.hasNext();)
        {
            TypeVariable typevariable = (TypeVariable)iterator.next();
            Type type1 = unrollVariableAssignments(typevariable, map2);
            Type type2 = unrollVariableAssignments(typevariable, map1);
            if (type2 != null && !type1.equals(type2) && (!(type1 instanceof WildcardType) || !isAssignable(type2, type1, map)))
            {
                return false;
            }
        }

        return true;
    }

    public static boolean isAssignable(Type type, Type type1)
    {
        return isAssignable(type, type1, null);
    }

    private static boolean isAssignable(Type type, Type type1, Map map)
    {
        if (type1 == null || (type1 instanceof Class))
        {
            return isAssignable(type, (Class)type1);
        }
        if (type1 instanceof ParameterizedType)
        {
            return isAssignable(type, (ParameterizedType)type1, map);
        }
        if (type1 instanceof GenericArrayType)
        {
            return isAssignable(type, (GenericArrayType)type1, map);
        }
        if (type1 instanceof WildcardType)
        {
            return isAssignable(type, (WildcardType)type1, map);
        }
        if (type1 instanceof TypeVariable)
        {
            return isAssignable(type, (TypeVariable)type1, map);
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("found an unhandled type: ").append(type1).toString());
        }
    }

    private static boolean isAssignable(Type type, TypeVariable typevariable, Map map)
    {
        if (type == null)
        {
            return true;
        }
        if (typevariable == null)
        {
            return false;
        }
        if (typevariable.equals(type))
        {
            return true;
        }
        if (type instanceof TypeVariable)
        {
            Type atype[] = getImplicitBounds((TypeVariable)type);
            int i = atype.length;
            for (int j = 0; j < i; j++)
            {
                if (isAssignable(atype[j], typevariable, map))
                {
                    return true;
                }
            }

        }
        if ((type instanceof Class) || (type instanceof ParameterizedType) || (type instanceof GenericArrayType) || (type instanceof WildcardType))
        {
            return false;
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("found an unhandled type: ").append(type).toString());
        }
    }

    private static boolean isAssignable(Type type, WildcardType wildcardtype, Map map)
    {
        if (type != null) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        Type atype[];
        Type atype1[];
        if (wildcardtype == null)
        {
            return false;
        }
        if (wildcardtype.equals(type))
        {
            continue; /* Loop/switch isn't completed */
        }
        atype = getImplicitUpperBounds(wildcardtype);
        atype1 = getImplicitLowerBounds(wildcardtype);
        if (!(type instanceof WildcardType))
        {
            break; /* Loop/switch isn't completed */
        }
        WildcardType wildcardtype1 = (WildcardType)type;
        Type atype2[] = getImplicitUpperBounds(wildcardtype1);
        Type atype3[] = getImplicitLowerBounds(wildcardtype1);
        int i1 = atype.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            Type type2 = substituteTypeVariables(atype[j1], map);
            int k2 = atype2.length;
            for (int l2 = 0; l2 < k2; l2++)
            {
                if (!isAssignable(atype2[l2], type2, map))
                {
                    return false;
                }
            }

        }

        int k1 = atype1.length;
        int l1 = 0;
        while (l1 < k1) 
        {
            Type type1 = substituteTypeVariables(atype1[l1], map);
            int i2 = atype3.length;
            for (int j2 = 0; j2 < i2; j2++)
            {
                if (!isAssignable(type1, atype3[j2], map))
                {
                    return false;
                }
            }

            l1++;
        }
        if (true) goto _L1; else goto _L3
_L3:
        int i = atype.length;
        for (int j = 0; j < i; j++)
        {
            if (!isAssignable(type, substituteTypeVariables(atype[j], map), map))
            {
                return false;
            }
        }

        int k = atype1.length;
        int l = 0;
        while (l < k) 
        {
            if (!isAssignable(substituteTypeVariables(atype1[l], map), type, map))
            {
                return false;
            }
            l++;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public static boolean isInstance(Object obj, Type type)
    {
        if (type != null)
        {
            if (obj == null)
            {
                if (!(type instanceof Class) || !((Class)type).isPrimitive())
                {
                    return true;
                }
            } else
            {
                return isAssignable(obj.getClass(), type, null);
            }
        }
        return false;
    }

    private static void mapTypeVariablesToArguments(Class class1, ParameterizedType parameterizedtype, Map map)
    {
        Type type = parameterizedtype.getOwnerType();
        if (type instanceof ParameterizedType)
        {
            mapTypeVariablesToArguments(class1, (ParameterizedType)type, map);
        }
        Type atype[] = parameterizedtype.getActualTypeArguments();
        TypeVariable atypevariable[] = getRawType(parameterizedtype).getTypeParameters();
        List list = Arrays.asList(class1.getTypeParameters());
        for (int i = 0; i < atype.length; i++)
        {
            TypeVariable typevariable = atypevariable[i];
            Type type1 = atype[i];
            if (list.contains(type1) && map.containsKey(typevariable))
            {
                map.put((TypeVariable)type1, map.get(typevariable));
            }
        }

    }

    public static Type[] normalizeUpperBounds(Type atype[])
    {
        HashSet hashset;
        int i;
        int j;
        Validate.notNull(atype, "null value specified for bounds array", new Object[0]);
        if (atype.length < 2)
        {
            return atype;
        }
        hashset = new HashSet(atype.length);
        i = atype.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        Type type;
        int k;
        int l;
        type = atype[j];
        k = atype.length;
        l = 0;
_L6:
        Type type1;
        if (l >= k)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        type1 = atype[l];
        if (type == type1 || !isAssignable(type1, type, null)) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L7:
        if (!flag)
        {
            hashset.add(type);
        }
        j++;
          goto _L5
_L4:
        l++;
          goto _L6
_L2:
        return (Type[])hashset.toArray(new Type[hashset.size()]);
        flag = false;
          goto _L7
    }

    public static final ParameterizedType parameterize(Class class1, Map map)
    {
        Validate.notNull(class1, "raw class is null", new Object[0]);
        Validate.notNull(map, "typeArgMappings is null", new Object[0]);
        return parameterizeWithOwner(null, class1, extractTypeArgumentsFrom(map, class1.getTypeParameters()));
    }

    public static final transient ParameterizedType parameterize(Class class1, Type atype[])
    {
        return parameterizeWithOwner(null, class1, atype);
    }

    public static final ParameterizedType parameterizeWithOwner(Type type, Class class1, Map map)
    {
        Validate.notNull(class1, "raw class is null", new Object[0]);
        Validate.notNull(map, "typeArgMappings is null", new Object[0]);
        return parameterizeWithOwner(type, class1, extractTypeArgumentsFrom(map, class1.getTypeParameters()));
    }

    public static final transient ParameterizedType parameterizeWithOwner(Type type, Class class1, Type atype[])
    {
        Validate.notNull(class1, "raw class is null", new Object[0]);
        boolean flag;
        if (class1.getEnclosingClass() == null)
        {
            Object aobj[];
            boolean flag1;
            if (type == null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            Validate.isTrue(flag1, "no owner allowed for top-level %s", new Object[] {
                class1
            });
            type = null;
        } else
        if (type == null)
        {
            type = class1.getEnclosingClass();
        } else
        {
            Validate.isTrue(isAssignable(type, class1.getEnclosingClass()), "%s is invalid owner type for parameterized %s", new Object[] {
                type, class1
            });
        }
        Validate.noNullElements(atype, "null type argument at index %s", new Object[0]);
        if (class1.getTypeParameters().length == atype.length)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(class1.getTypeParameters().length);
        aobj[1] = Integer.valueOf(atype.length);
        Validate.isTrue(flag, "invalid number of type parameters specified: expected %s, got %s", aobj);
        return new ParameterizedTypeImpl(class1, type, atype);
    }

    private static String parameterizedTypeToString(ParameterizedType parameterizedtype)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Type type = parameterizedtype.getOwnerType();
        Class class1 = (Class)parameterizedtype.getRawType();
        Type atype[] = parameterizedtype.getActualTypeArguments();
        if (type == null)
        {
            stringbuilder.append(class1.getName());
        } else
        {
            if (type instanceof Class)
            {
                stringbuilder.append(((Class)type).getName());
            } else
            {
                stringbuilder.append(type.toString());
            }
            stringbuilder.append('.').append(class1.getSimpleName());
        }
        appendAllTo(stringbuilder.append('<'), ", ", atype).append('>');
        return stringbuilder.toString();
    }

    private static Type substituteTypeVariables(Type type, Map map)
    {
        Type type1;
        if ((type instanceof TypeVariable) && map != null)
        {
            type1 = (Type)map.get(type);
            if (type1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("missing assignment type for type variable ").append(type).toString());
            }
        } else
        {
            type1 = type;
        }
        return type1;
    }

    public static String toLongString(TypeVariable typevariable)
    {
        StringBuilder stringbuilder;
        java.lang.reflect.GenericDeclaration genericdeclaration;
        Class class1;
        Validate.notNull(typevariable, "var is null", new Object[0]);
        stringbuilder = new StringBuilder();
        genericdeclaration = typevariable.getGenericDeclaration();
        if (!(genericdeclaration instanceof Class))
        {
            break MISSING_BLOCK_LABEL_103;
        }
        class1 = (Class)genericdeclaration;
_L3:
        if (class1.getEnclosingClass() != null) goto _L2; else goto _L1
_L1:
        stringbuilder.insert(0, class1.getName());
_L4:
        return stringbuilder.append(':').append(typeVariableToString(typevariable)).toString();
_L2:
        stringbuilder.insert(0, class1.getSimpleName()).insert(0, '.');
        class1 = class1.getEnclosingClass();
          goto _L3
        if (genericdeclaration instanceof Type)
        {
            stringbuilder.append(toString((Type)genericdeclaration));
        } else
        {
            stringbuilder.append(genericdeclaration);
        }
          goto _L4
    }

    public static String toString(Type type)
    {
        Validate.notNull(type);
        if (type instanceof Class)
        {
            return classToString((Class)type);
        }
        if (type instanceof ParameterizedType)
        {
            return parameterizedTypeToString((ParameterizedType)type);
        }
        if (type instanceof WildcardType)
        {
            return wildcardTypeToString((WildcardType)type);
        }
        if (type instanceof TypeVariable)
        {
            return typeVariableToString((TypeVariable)type);
        }
        if (type instanceof GenericArrayType)
        {
            return genericArrayTypeToString((GenericArrayType)type);
        } else
        {
            throw new IllegalArgumentException(ObjectUtils.identityToString(type));
        }
    }

    private static String typeVariableToString(TypeVariable typevariable)
    {
        StringBuilder stringbuilder = new StringBuilder(typevariable.getName());
        Type atype[] = typevariable.getBounds();
        if (atype.length > 0 && (atype.length != 1 || !java/lang/Object.equals(atype[0])))
        {
            stringbuilder.append(" extends ");
            appendAllTo(stringbuilder, " & ", typevariable.getBounds());
        }
        return stringbuilder.toString();
    }

    public static boolean typesSatisfyVariables(Map map)
    {
        Validate.notNull(map, "typeVarAssigns is null", new Object[0]);
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            TypeVariable typevariable = (TypeVariable)entry.getKey();
            Type type = (Type)entry.getValue();
            Type atype[] = getImplicitBounds(typevariable);
            int i = atype.length;
            int j = 0;
            while (j < i) 
            {
                if (!isAssignable(type, substituteTypeVariables(atype[j], map), map))
                {
                    return false;
                }
                j++;
            }
        }

        return true;
    }

    private static Type[] unrollBounds(Map map, Type atype[])
    {
        int i = 0;
        while (i < atype.length) 
        {
            Type type = unrollVariables(map, atype[i]);
            if (type == null)
            {
                int j = i - 1;
                atype = (Type[])ArrayUtils.remove(atype, i);
                i = j;
            } else
            {
                atype[i] = type;
            }
            i++;
        }
        return atype;
    }

    private static Type unrollVariableAssignments(TypeVariable typevariable, Map map)
    {
        do
        {
            Type type = (Type)map.get(typevariable);
            if ((type instanceof TypeVariable) && !type.equals(typevariable))
            {
                typevariable = (TypeVariable)type;
            } else
            {
                return type;
            }
        } while (true);
    }

    public static Type unrollVariables(Map map, Type type)
    {
        if (map == null)
        {
            map = Collections.emptyMap();
        }
        if (containsTypeVariables(type))
        {
            if (type instanceof TypeVariable)
            {
                type = unrollVariables(map, (Type)map.get(type));
            } else
            {
                if (type instanceof ParameterizedType)
                {
                    ParameterizedType parameterizedtype = (ParameterizedType)type;
                    Type atype[];
                    if (parameterizedtype.getOwnerType() != null)
                    {
                        HashMap hashmap = new HashMap(map);
                        hashmap.putAll(getTypeArguments(parameterizedtype));
                        map = hashmap;
                    }
                    atype = parameterizedtype.getActualTypeArguments();
                    for (int i = 0; i < atype.length; i++)
                    {
                        Type type1 = unrollVariables(map, atype[i]);
                        if (type1 != null)
                        {
                            atype[i] = type1;
                        }
                    }

                    return parameterizeWithOwner(parameterizedtype.getOwnerType(), (Class)parameterizedtype.getRawType(), atype);
                }
                if (type instanceof WildcardType)
                {
                    WildcardType wildcardtype = (WildcardType)type;
                    return wildcardType().withUpperBounds(unrollBounds(map, wildcardtype.getUpperBounds())).withLowerBounds(unrollBounds(map, wildcardtype.getLowerBounds())).build();
                }
            }
        }
        return type;
    }

    public static WildcardTypeBuilder wildcardType()
    {
        return new WildcardTypeBuilder();
    }

    private static String wildcardTypeToString(WildcardType wildcardtype)
    {
        StringBuilder stringbuilder;
        Type atype[];
        Type atype1[];
        stringbuilder = (new StringBuilder()).append('?');
        atype = wildcardtype.getLowerBounds();
        atype1 = wildcardtype.getUpperBounds();
        if (atype.length <= 0) goto _L2; else goto _L1
_L1:
        appendAllTo(stringbuilder.append(" super "), " & ", atype);
_L4:
        return stringbuilder.toString();
_L2:
        if (atype1.length != 1 || !java/lang/Object.equals(atype1[0]))
        {
            appendAllTo(stringbuilder.append(" extends "), " & ", atype1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Typed wrap(Class class1)
    {
        return wrap(((Type) (class1)));
    }

    public static Typed wrap(Type type)
    {
        return new Typed(type) {

            final Type val$type;

            public Type getType()
            {
                return type;
            }

            
            {
                type = type1;
                super();
            }
        };
    }




}
