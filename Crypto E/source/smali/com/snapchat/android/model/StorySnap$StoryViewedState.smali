.class public final enum Lcom/snapchat/android/model/StorySnap$StoryViewedState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/StorySnap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryViewedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/StorySnap$StoryViewedState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/StorySnap$StoryViewedState;

.field public static final enum RELEASED_BEFORE_TIMER_EXPIRED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

.field public static final enum TAPPED_TO_SKIP:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

.field public static final enum TIMER_EXPIRED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

.field public static final enum UNVIEWED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

.field public static final enum VIEWING:Lcom/snapchat/android/model/StorySnap$StoryViewedState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    const-string v1, "UNVIEWED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/StorySnap$StoryViewedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->UNVIEWED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    .line 107
    new-instance v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    const-string v1, "VIEWING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/StorySnap$StoryViewedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->VIEWING:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    .line 108
    new-instance v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    const-string v1, "RELEASED_BEFORE_TIMER_EXPIRED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/StorySnap$StoryViewedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->RELEASED_BEFORE_TIMER_EXPIRED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    .line 110
    new-instance v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    const-string v1, "TIMER_EXPIRED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/StorySnap$StoryViewedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->TIMER_EXPIRED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    .line 111
    new-instance v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    const-string v1, "TAPPED_TO_SKIP"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/StorySnap$StoryViewedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->TAPPED_TO_SKIP:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    sget-object v1, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->UNVIEWED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->VIEWING:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->RELEASED_BEFORE_TIMER_EXPIRED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->TIMER_EXPIRED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->TAPPED_TO_SKIP:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->$VALUES:[Lcom/snapchat/android/model/StorySnap$StoryViewedState;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/StorySnap$StoryViewedState;
    .locals 1
    .parameter

    .prologue
    .line 104
    const-class v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/StorySnap$StoryViewedState;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->$VALUES:[Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/StorySnap$StoryViewedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    return-object v0
.end method
