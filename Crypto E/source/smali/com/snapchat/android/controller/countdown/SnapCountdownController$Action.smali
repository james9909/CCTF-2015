.class final enum Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

.field public static final enum b:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

.field public static final enum c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

.field private static final synthetic d:[Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    const-string v1, "EXPIRE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->b:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->c:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->d:[Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->d:[Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-virtual {v0}, [Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    return-object v0
.end method
