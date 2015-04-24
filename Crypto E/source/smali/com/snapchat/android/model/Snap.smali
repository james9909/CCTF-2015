.class public abstract Lcom/snapchat/android/model/Snap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/chat/ChatFeedItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/Snap$1;,
        Lcom/snapchat/android/model/Snap$ClientSnapStatus;,
        Lcom/snapchat/android/model/Snap$TargetView;
    }
.end annotation


# static fields
.field public static final TARGET_VIEWS_CHAT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Snap$TargetView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_VIEWS_FEED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Snap$TargetView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mClearedBySender:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cleared_by_sender"
    .end annotation
.end field

.field protected mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field protected mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field protected mMediaType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_type"
    .end annotation
.end field

.field protected mSentTimestamp:J

.field protected mTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    .line 35
    sget-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->CHAT:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_CHAT:Ljava/util/Set;

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    .line 39
    sget-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/snapchat/android/model/Snap;->TARGET_VIEWS_FEED:Ljava/util/Set;

    sget-object v1, Lcom/snapchat/android/model/Snap$TargetView;->CHAT_AND_FEED:Lcom/snapchat/android/model/Snap$TargetView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    .line 114
    iput-wide p2, p0, Lcom/snapchat/android/model/Snap;->mTimestamp:J

    .line 115
    iput p4, p0, Lcom/snapchat/android/model/Snap;->mMediaType:I

    .line 116
    iput-object p5, p0, Lcom/snapchat/android/model/Snap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 117
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Snap$ClientSnapStatus;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0c0145

    .line 177
    sget-object v1, Lcom/snapchat/android/model/Snap$1;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 214
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_1
    const v0, 0x7f0c01a1

    goto :goto_0

    .line 184
    :pswitch_2
    const v0, 0x7f0c00ec

    goto :goto_0

    .line 186
    :pswitch_3
    const v0, 0x7f0c019f

    goto :goto_0

    .line 188
    :pswitch_4
    const v0, 0x7f0c01a2

    goto :goto_0

    .line 190
    :pswitch_5
    const v0, 0x7f0c00c2

    goto :goto_0

    .line 192
    :pswitch_6
    const v0, 0x7f0c0154

    goto :goto_0

    .line 197
    :pswitch_7
    const v0, 0x7f0c018b

    goto :goto_0

    .line 199
    :pswitch_8
    const v0, 0x7f0c020c

    goto :goto_0

    .line 201
    :pswitch_9
    const v0, 0x7f0c016e

    goto :goto_0

    .line 203
    :pswitch_a
    const v0, 0x7f0c00f4

    goto :goto_0

    .line 205
    :pswitch_b
    const v0, 0x7f0c0022

    goto :goto_0

    .line 207
    :pswitch_c
    const v0, 0x7f0c016d

    goto :goto_0

    .line 209
    :pswitch_d
    const v0, 0x7f0c0183

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4
    .parameter

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method protected a(ZZ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/snapchat/android/model/Snap$1;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_5

    .line 155
    :cond_0
    const v0, 0x7f020043

    .line 157
    :goto_0
    return v0

    .line 125
    :pswitch_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020040

    goto :goto_0

    .line 126
    :cond_1
    const v0, 0x7f020041

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02003c

    goto :goto_0

    .line 129
    :cond_2
    const v0, 0x7f02003d

    goto :goto_0

    .line 134
    :pswitch_2
    const v0, 0x7f020113

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020037

    goto :goto_0

    .line 138
    :cond_3
    const v0, 0x7f020038

    goto :goto_0

    .line 140
    :pswitch_4
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f020034

    goto :goto_0

    .line 141
    :cond_4
    const v0, 0x7f020035

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->aj()I

    move-result v0

    goto :goto_0

    .line 150
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/Snap;->b(ZZ)I

    move-result v0

    goto :goto_0

    .line 152
    :pswitch_7
    const v0, 0x7f020114

    goto :goto_0

    .line 157
    :cond_5
    const v0, 0x7f020044

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/model/Snap$ClientSnapStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/snapchat/android/model/Snap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 332
    return-void
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/snapchat/android/model/Snap;->mTimestamp:J

    return-wide v0
.end method

.method public abstract af()J
.end method

.method public aj()I
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020032

    .line 163
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020033

    goto :goto_0
.end method

.method public ak()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    return-object v0
.end method

.method public am()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 246
    iget v1, p0, Lcom/snapchat/android/model/Snap;->mMediaType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/snapchat/android/model/Snap;->mMediaType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public an()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 250
    iget v1, p0, Lcom/snapchat/android/model/Snap;->mMediaType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ao()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/snapchat/android/model/Snap;->mMediaType:I

    return v0
.end method

.method public ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public aq()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public as()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snap;->mClearedBySender:Z

    .line 320
    return-void
.end method

.method public at()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snap;->mClearedBySender:Z

    return v0
.end method

.method public au()Z
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ZZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f02002a

    .line 172
    :goto_0
    return v0

    .line 169
    :cond_1
    const v0, 0x7f020043

    goto :goto_0

    .line 171
    :cond_2
    if-eqz p1, :cond_3

    const v0, 0x7f02002b

    goto :goto_0

    .line 172
    :cond_3
    const v0, 0x7f020044

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Snap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/Snap;->a(Landroid/content/Context;Lcom/snapchat/android/model/Snap$ClientSnapStatus;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/Snap;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 275
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    .line 278
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_2
    check-cast p1, Lcom/snapchat/android/model/Snap;

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object v1, p1, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 266
    .line 268
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 269
    return v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Snap;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public abstract i()Z
.end method

.method public abstract n()Ljava/lang/String;
.end method
