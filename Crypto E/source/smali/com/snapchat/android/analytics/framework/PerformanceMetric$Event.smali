.class public final enum Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/PerformanceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum b:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum c:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum d:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum e:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum f:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum g:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum h:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum i:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum j:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum k:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum l:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum m:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum n:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum o:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum p:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum q:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum r:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum s:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum t:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum u:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum v:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum w:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field public static final enum x:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

.field private static final synthetic y:[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "APP_STARTUP_TIMED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->a:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 21
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "CHAT_SENT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->b:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 22
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_SNAP_DOWNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->c:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 23
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_STORY_DOWNLOAD"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->d:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 24
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "GEOFILTER_DOWNLOAD_BITMAP"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->e:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 25
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "NOTIFICATION_OPEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->f:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 26
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "SNAP_CAPTURED_TO_PREVIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->g:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 27
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "SNAP_SEND_TIMED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->h:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 28
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "STORY_DOWNLOAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->i:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 29
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "VIEW_SNAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->j:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 31
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "PULL_TO_REFRESH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->k:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 32
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "CONTENT_READY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->l:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 33
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "CAMERA_DELAY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->m:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 34
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_ITEM_READY"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->n:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 35
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "EXIT_CAMERA_VIEW"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->o:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 36
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "FIRST_MEDIA_OPENED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->p:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 37
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "MEDIA_VIEW_INTERVAL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->q:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 38
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "CAMERA_SWITCH"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->r:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 39
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "RECORDING_DELAY"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->s:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 40
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "SNAP_SENT_DELAY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->t:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 41
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "STORY_POST_DELAY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->u:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 42
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "SELECT_FRIEND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->v:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 43
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "VIEW_NEXT_SNAP"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->w:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->x:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 19
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->a:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->b:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->c:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->d:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->e:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->f:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->g:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->h:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->i:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->j:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->k:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->l:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->m:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->n:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->o:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->p:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->q:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->r:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->s:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->t:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->u:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->v:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->w:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->x:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->y:[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    .locals 3
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "PerformanceMetric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert an empty string("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") into PerformanceMetric.EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->x:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    sget-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->x:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->y:[Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    return-object v0
.end method
