.class final enum Lcom/squareup/javawriter/JavaWriter$Scope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javawriter/JavaWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/javawriter/JavaWriter$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum b:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum c:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum d:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum e:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum f:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum g:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum h:Lcom/squareup/javawriter/JavaWriter$Scope;

.field private static final synthetic i:[Lcom/squareup/javawriter/JavaWriter$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 838
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "TYPE_DECLARATION"

    invoke-direct {v0, v1, v3}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->a:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 839
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ABSTRACT_METHOD"

    invoke-direct {v0, v1, v4}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->b:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 840
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "NON_ABSTRACT_METHOD"

    invoke-direct {v0, v1, v5}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->c:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 841
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "CONSTRUCTOR"

    invoke-direct {v0, v1, v6}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->d:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 842
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "CONTROL_FLOW"

    invoke-direct {v0, v1, v7}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->e:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 843
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ANNOTATION_ATTRIBUTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->f:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 844
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ANNOTATION_ARRAY_VALUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->g:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 845
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "INITIALIZER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->h:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 837
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->a:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->b:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->c:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->d:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->e:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->f:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->g:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->h:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->i:[Lcom/squareup/javawriter/JavaWriter$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 837
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1
    .parameter

    .prologue
    .line 837
    const-class v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method

.method public static values()[Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .prologue
    .line 837
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->i:[Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-virtual {v0}, [Lcom/squareup/javawriter/JavaWriter$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method
