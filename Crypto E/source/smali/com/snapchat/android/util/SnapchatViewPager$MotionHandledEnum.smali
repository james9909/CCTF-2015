.class final enum Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/SnapchatViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MotionHandledEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

.field public static final enum b:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

.field private static final synthetic c:[Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    const-string v1, "MOTION_HANDLED_REJECT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->a:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    .line 129
    new-instance v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    const-string v1, "MOTION_NOT_HANDLED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->b:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    sget-object v1, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->a:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->b:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->c:[Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;
    .locals 1
    .parameter

    .prologue
    .line 127
    const-class v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->c:[Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    return-object v0
.end method
