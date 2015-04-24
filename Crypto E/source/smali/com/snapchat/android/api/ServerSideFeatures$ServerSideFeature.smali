.class public Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/ServerSideFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerSideFeature"
.end annotation


# instance fields
.field private mABTestForFeature:Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFeatureName:Ljava/lang/String;

.field private mOnByDefault:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;-><init>(Ljava/lang/String;ZLcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;)V

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;-><init>(Ljava/lang/String;ZLcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mFeatureName:Ljava/lang/String;

    .line 84
    iput-boolean p2, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mOnByDefault:Z

    .line 86
    iput-object p3, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mABTestForFeature:Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    .line 87
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mFeatureName:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/snapchat/android/model/StudySettings;)Z
    .locals 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mABTestForFeature:Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    if-nez v0, :cond_0

    .line 91
    iget-boolean v0, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mOnByDefault:Z

    .line 94
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mABTestForFeature:Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    iget-object v0, v0, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;->studyId:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mABTestForFeature:Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    iget-object v1, v1, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;->variable:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->mABTestForFeature:Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    iget-object v1, v1, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;->onValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
