.class public final enum Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/notification/AndroidNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/notification/AndroidNotificationManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum d:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum f:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum g:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum h:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum i:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum k:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum l:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum m:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum n:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum o:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field public static final enum p:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field private static final synthetic r:[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;


# instance fields
.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "SNAP"

    invoke-direct {v0, v1, v4, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 111
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v5, v4}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 112
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "ADDFRIEND"

    invoke-direct {v0, v1, v6, v5}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 113
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "REPLAY"

    invoke-direct {v0, v1, v7, v6}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->d:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 114
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "TYPING"

    invoke-direct {v0, v1, v8, v7}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 115
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "SCREENSHOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->f:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 116
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "CHAT_SCREENSHOT"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->g:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 117
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "HERE_SCREENSHOT"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->h:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 118
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "STORIES"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->i:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 119
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "CASH"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 120
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "CASH_MESSAGE"

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->k:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 123
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "FAILED_SNAP_AND_CHAT"

    const/16 v2, 0xb

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->l:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 124
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "FAILED_CHAT_NOT_FRIENDS"

    const/16 v2, 0xc

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->m:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 125
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "UPLOAD_LOGS_REQUEST"

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->n:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 126
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "FAILED_CASH"

    const/16 v2, 0xe

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->o:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 129
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    const-string v1, "EMAIL_VERIFIED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->p:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->c:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->d:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->e:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->f:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->g:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->h:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->i:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->j:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->k:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->l:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->m:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->n:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->o:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->p:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->r:[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->q:I

    .line 137
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
    .locals 1
    .parameter

    .prologue
    .line 107
    const-class v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->r:[Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v0}, [Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->q:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LANDING_PAGE_ACTION_FROM_NOTIF_TYPE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/notification/AndroidNotificationManager$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
