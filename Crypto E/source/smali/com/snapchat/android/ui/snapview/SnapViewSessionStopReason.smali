.class public final enum Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum c:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum d:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum e:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum f:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field private static final synthetic i:[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;


# instance fields
.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER"

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->a:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 14
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY"

    invoke-direct {v0, v1, v3, v4, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 18
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ERROR_UNABLE_TO_SHOW_MEDIA"

    invoke-direct {v0, v1, v5, v3, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->c:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 22
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "TIMER_EXPIRED"

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->d:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 26
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ABORT_REQUESTED"

    invoke-direct {v0, v1, v7, v4, v4}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->e:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 30
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "SKIP_REQUESTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->f:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->a:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->c:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->d:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->e:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->f:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->i:[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-boolean p3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->g:Z

    .line 37
    iput-boolean p4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->h:Z

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->i:[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->h:Z

    return v0
.end method
