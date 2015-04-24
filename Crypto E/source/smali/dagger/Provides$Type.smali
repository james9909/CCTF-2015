.class public final enum Ldagger/Provides$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/Provides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldagger/Provides$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ldagger/Provides$Type;

.field public static final enum b:Ldagger/Provides$Type;

.field public static final enum c:Ldagger/Provides$Type;

.field private static final synthetic d:[Ldagger/Provides$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "UNIQUE"

    invoke-direct {v0, v1, v2}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->a:Ldagger/Provides$Type;

    .line 49
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "SET"

    invoke-direct {v0, v1, v3}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->b:Ldagger/Provides$Type;

    .line 56
    new-instance v0, Ldagger/Provides$Type;

    const-string v1, "SET_VALUES"

    invoke-direct {v0, v1, v4}, Ldagger/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldagger/Provides$Type;->c:Ldagger/Provides$Type;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Ldagger/Provides$Type;

    sget-object v1, Ldagger/Provides$Type;->a:Ldagger/Provides$Type;

    aput-object v1, v0, v2

    sget-object v1, Ldagger/Provides$Type;->b:Ldagger/Provides$Type;

    aput-object v1, v0, v3

    sget-object v1, Ldagger/Provides$Type;->c:Ldagger/Provides$Type;

    aput-object v1, v0, v4

    sput-object v0, Ldagger/Provides$Type;->d:[Ldagger/Provides$Type;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldagger/Provides$Type;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Ldagger/Provides$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldagger/Provides$Type;

    return-object v0
.end method

.method public static values()[Ldagger/Provides$Type;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ldagger/Provides$Type;->d:[Ldagger/Provides$Type;

    invoke-virtual {v0}, [Ldagger/Provides$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldagger/Provides$Type;

    return-object v0
.end method
