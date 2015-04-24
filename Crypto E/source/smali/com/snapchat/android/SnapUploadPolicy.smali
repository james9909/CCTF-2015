.class public Lcom/snapchat/android/SnapUploadPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private b:Lcom/snapchat/android/model/StudySettings;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/SnapUploadPolicy;-><init>(Lcom/snapchat/android/model/StudySettings;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StudySettings;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/SnapUploadPolicy;->b:Lcom/snapchat/android/model/StudySettings;

    .line 23
    iput-object p2, p0, Lcom/snapchat/android/SnapUploadPolicy;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/snapchat/android/SnapUploadPolicy;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/SnapUploadPolicy;->a:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/SnapUploadPolicy;->b:Lcom/snapchat/android/model/StudySettings;

    const-string v2, "EarlyUploadSnaps"

    const-string v3, "early_upload_snaps"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
