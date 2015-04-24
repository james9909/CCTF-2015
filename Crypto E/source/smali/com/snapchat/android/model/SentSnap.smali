.class public Lcom/snapchat/android/model/SentSnap;
.super Lcom/snapchat/android/model/Snap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/SentSnap$2;
    }
.end annotation


# static fields
.field public static final TIME_TO_PRIORITIZE_SENT_ICON:I = 0x3e8

.field private static final sSentSnapStateTimeline:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Snap$ClientSnapStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mDisplayTime:Ljava/lang/String;

.field private mIsSavableSnap:Z

.field private mRecipient:Ljava/lang/String;

.field private mSnapUriString:Ljava/lang/String;

.field private mTimeOfLastSendAttempt:J

.field private mZipped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snapchat/android/model/SentSnap;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 16
    .parameter

    .prologue
    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v8

    sget-object v9, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->n()Z

    move-result v15

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/snapchat/android/model/SentSnap;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const-string v11, "0"

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v15}, Lcom/snapchat/android/model/SentSnap;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/Snap;-><init>(Ljava/lang/String;JILcom/snapchat/android/model/Snap$ClientSnapStatus;)V

    .line 55
    iput-object p2, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    .line 56
    iput-wide p5, p0, Lcom/snapchat/android/model/SentSnap;->mSentTimestamp:J

    .line 57
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mDisplayTime:Ljava/lang/String;

    .line 58
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/snapchat/android/model/SentSnap;->mTimeOfLastSendAttempt:J

    .line 59
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mRecipient:Ljava/lang/String;

    .line 60
    const-string v2, "0"

    iput-object v2, p0, Lcom/snapchat/android/model/SentSnap;->mDisplayTime:Ljava/lang/String;

    .line 61
    if-eqz p11, :cond_0

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/model/SentSnap;->mSnapUriString:Ljava/lang/String;

    .line 62
    :cond_0
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/snapchat/android/model/SentSnap;->mZipped:Z

    .line 63
    iget-wide v2, p0, Lcom/snapchat/android/model/SentSnap;->mTimeOfLastSendAttempt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/model/SentSnap;->c(J)V

    .line 66
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/SentSnap;->mIsSavableSnap:Z

    .line 67
    return-void
.end method


# virtual methods
.method public V()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 263
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 264
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->Y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 271
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->ordinal()I

    move-result v0

    return v0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 269
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long v0, v6, v0

    .line 284
    new-instance v2, Lcom/snapchat/android/model/SentSnap$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/model/SentSnap$1;-><init>(Lcom/snapchat/android/model/SentSnap;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    :cond_0
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;

    invoke-virtual {p0, v4, v4}, Lcom/snapchat/android/model/SentSnap;->a(ZZ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;-><init>(I)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/snapchat/android/model/SentSnap$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 346
    const v0, 0x7f0c0209

    .line 348
    :goto_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :pswitch_0
    const v0, 0x7f0c00ee

    .line 317
    goto :goto_0

    .line 319
    :pswitch_1
    const v0, 0x7f0c00ec

    .line 320
    goto :goto_0

    .line 322
    :pswitch_2
    const v0, 0x7f0c0154

    .line 323
    goto :goto_0

    .line 325
    :pswitch_3
    const v0, 0x7f0c019f

    .line 326
    goto :goto_0

    .line 328
    :pswitch_4
    const v0, 0x7f0c01a2

    .line 329
    goto :goto_0

    .line 331
    :pswitch_5
    const v0, 0x7f0c00c2

    .line 332
    goto :goto_0

    .line 334
    :pswitch_6
    const v0, 0x7f0c018b

    .line 335
    goto :goto_0

    .line 337
    :pswitch_7
    const v0, 0x7f0c0184

    .line 338
    goto :goto_0

    .line 340
    :pswitch_8
    const v0, 0x7f0c0183

    .line 341
    goto :goto_0

    .line 343
    :pswitch_9
    const v0, 0x7f0c0145

    .line 344
    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-wide p1, p0, Lcom/snapchat/android/model/SentSnap;->mSentTimestamp:J

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/snapchat/android/model/SentSnap;->mSnapUriString:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/snapchat/android/model/SentSnap;->mIsSavableSnap:Z

    .line 102
    return-void
.end method

.method public a(Lcom/snapchat/android/model/SentSnap;)Z
    .locals 3
    .parameter

    .prologue
    .line 352
    sget-object v0, Lcom/snapchat/android/model/SentSnap;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/snapchat/android/model/SentSnap;->sSentSnapStateTimeline:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/snapchat/android/model/SentSnap;->mSentTimestamp:J

    return-wide v0
.end method

.method public af()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/snapchat/android/model/SentSnap;->mTimestamp:J

    return-wide v0
.end method

.method public b(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 277
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/SentSnap;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/snapchat/android/model/SentSnap;->mTimestamp:J

    .line 202
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public c(Lcom/snapchat/android/model/chat/ChatConversation;)J
    .locals 2
    .parameter

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->af()J

    move-result-wide v0

    .line 297
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->ae()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c(J)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/snapchat/android/model/SentSnap;->mTimeOfLastSendAttempt:J

    .line 220
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/snapchat/android/model/SentSnap;->mIsSavableSnap:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 362
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    .line 364
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/SentSnap;

    if-nez v0, :cond_1

    .line 365
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/SentSnap;

    .line 372
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->z()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/model/SentSnap;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mId:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    iget-object v1, p1, Lcom/snapchat/android/model/SentSnap;->mId:Ljava/lang/String;

    invoke-static {v1}, Lcom/snapchat/android/util/SnapUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mDisplayTime:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 127
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-nez v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v1, v2, :cond_0

    .line 79
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 145
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/snapchat/android/model/SentSnap;->mZipped:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mRecipient:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 153
    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/snapchat/android/model/SentSnap$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 176
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mSnapUriString:Ljava/lang/String;

    return-object v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/snapchat/android/model/SentSnap;->mTimeOfLastSendAttempt:J

    return-wide v0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 132
    return-void
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/snapchat/android/model/SentSnap$2;->$SwitchMap$com$snapchat$android$model$Snap$ClientSnapStatus:[I

    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 164
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public w()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mId:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapWomb;->g()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 238
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;

    const-string v1, "AnnotatedMediabryo was null"

    invoke-direct {v0, v1}, Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    new-instance v1, Lcom/snapchat/android/controller/SendSnapController;

    invoke-direct {v1}, Lcom/snapchat/android/controller/SendSnapController;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/controller/SendSnapController;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZ)V

    .line 245
    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->j()V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/SentSnap;->mTimeOfLastSendAttempt:J

    .line 247
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapSelectedForRetryEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SnapSelectedForRetryEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .locals 4

    .prologue
    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/SentSnap;->r()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected z()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/snapchat/android/model/SentSnap;->mClientId:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/model/SentSnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
