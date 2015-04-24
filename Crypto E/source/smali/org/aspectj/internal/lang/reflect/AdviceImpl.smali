.class public Lorg/aspectj/internal/lang/reflect/AdviceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/Advice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;
    }
.end annotation


# instance fields
.field private final a:Lorg/aspectj/lang/reflect/AdviceKind;

.field private final b:Ljava/lang/reflect/Method;

.field private c:Lorg/aspectj/lang/reflect/PointcutExpression;

.field private d:Z

.field private e:[Lorg/aspectj/lang/reflect/AjType;

.field private f:[Lorg/aspectj/lang/reflect/AjType;


# virtual methods
.method public a()[Lorg/aspectj/lang/reflect/AjType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 80
    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 81
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.aspectj.runtime.internal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_1
    array-length v2, v3

    sub-int v0, v2, v0

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Lorg/aspectj/lang/reflect/AjType;

    move v0, v1

    .line 84
    :goto_1
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Lorg/aspectj/lang/reflect/AjType;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 85
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v2, v3, v0

    invoke-static {v2}, Lorg/aspectj/lang/reflect/AjTypeSystem;->a(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    aput-object v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e:[Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public b()[Lorg/aspectj/lang/reflect/AjType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 94
    array-length v0, v1

    new-array v0, v0, [Lorg/aspectj/lang/reflect/AjType;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    .line 95
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 96
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    aget-object v3, v1, v0

    invoke-static {v3}, Lorg/aspectj/lang/reflect/AjTypeSystem;->a(Ljava/lang/Class;)Lorg/aspectj/lang/reflect/AjType;

    move-result-object v3

    aput-object v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->f:[Lorg/aspectj/lang/reflect/AjType;

    return-object v0
.end method

.method public c()Lorg/aspectj/lang/reflect/AdviceKind;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->a:Lorg/aspectj/lang/reflect/AdviceKind;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "ajc$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, ""

    .line 110
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    const-class v2, Lorg/aspectj/lang/annotation/AdviceName;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/aspectj/lang/annotation/AdviceName;

    .line 111
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/aspectj/lang/annotation/AdviceName;->a()Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public e()Lorg/aspectj/lang/reflect/PointcutExpression;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->c:Lorg/aspectj/lang/reflect/PointcutExpression;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    const-string v0, "@AdviceName(\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v0, "\") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->c()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->e:Lorg/aspectj/lang/reflect/AdviceKind;

    if-ne v0, v2, :cond_1

    .line 128
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :cond_1
    sget-object v0, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->a:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->c()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->a()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v4

    .line 149
    array-length v0, v4

    .line 150
    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v2, v1

    .line 151
    :goto_1
    if-ge v2, v0, :cond_4

    .line 152
    aget-object v5, v4, v2

    invoke-interface {v5}, Lorg/aspectj/lang/reflect/AjType;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v0, :cond_3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :pswitch_0
    const-string v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 139
    :pswitch_2
    const-string v0, "after("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 142
    :pswitch_3
    const-string v0, "around("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 145
    :pswitch_4
    const-string v0, "before("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 155
    :cond_4
    const-string v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    sget-object v2, Lorg/aspectj/internal/lang/reflect/AdviceImpl$1;->a:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->c()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-virtual {v5}, Lorg/aspectj/lang/reflect/AdviceKind;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_1

    .line 173
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->b()[Lorg/aspectj/lang/reflect/AjType;

    move-result-object v2

    .line 174
    array-length v0, v2

    if-lez v0, :cond_9

    .line 175
    const-string v0, "throws "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 176
    :goto_3
    array-length v1, v2

    if-ge v0, v1, :cond_8

    .line 177
    aget-object v1, v2, v0

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/AjType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v1, v0, 0x1

    array-length v4, v2

    if-ge v1, v4, :cond_6

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 158
    :pswitch_5
    const-string v2, "returning"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    if-eqz v2, :cond_7

    .line 160
    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v4, v2

    invoke-interface {v2}, Lorg/aspectj/lang/reflect/AjType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_7
    :pswitch_6
    const-string v2, "throwing"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget-boolean v2, p0, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->d:Z

    if-eqz v2, :cond_5

    .line 167
    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/AjType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 180
    :cond_8
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_9
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AdviceImpl;->e()Lorg/aspectj/lang/reflect/PointcutExpression;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/PointcutExpression;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
