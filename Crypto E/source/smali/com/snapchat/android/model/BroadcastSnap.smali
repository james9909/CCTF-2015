.class public Lcom/snapchat/android/model/BroadcastSnap;
.super Lcom/snapchat/android/model/ReceivedSnap;
.source "SourceFile"


# instance fields
.field private mActionText:Ljava/lang/String;

.field private mActionUrl:Ljava/lang/String;

.field private mHideTimer:Z

.field private mMediaUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/model/ReceivedSnap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;JDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 24
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    const/16 v17, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, p10

    move-object/from16 v16, p12

    move-wide/from16 v18, p13

    move-wide/from16 v20, p15

    move-object/from16 v22, p21

    invoke-direct/range {v2 .. v22}, Lcom/snapchat/android/model/ReceivedSnap;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 27
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/snapchat/android/model/BroadcastSnap;->mMediaUrl:Ljava/lang/String;

    .line 28
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    .line 29
    move-object/from16 v0, p19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/snapchat/android/model/BroadcastSnap;->mActionUrl:Ljava/lang/String;

    .line 30
    move/from16 v0, p20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/snapchat/android/model/BroadcastSnap;->mHideTimer:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 0
    .parameter

    .prologue
    .line 88
    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/snapchat/android/model/BroadcastSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/model/ReceivedSnap;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/model/BroadcastSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/model/ReceivedSnap;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/snapchat/android/model/BroadcastSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/model/ReceivedSnap;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mHideTimer:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/snapchat/android/model/ReceivedSnap;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/BroadcastSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/BroadcastSnap;->mActionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u_()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/snapchat/android/model/BroadcastSnap;->r()V

    .line 63
    return-void
.end method
