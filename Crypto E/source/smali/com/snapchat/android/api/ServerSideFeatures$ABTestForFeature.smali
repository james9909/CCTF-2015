.class public Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/ServerSideFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ABTestForFeature"
.end annotation


# instance fields
.field public onValue:Ljava/lang/String;

.field public studyId:Ljava/lang/String;

.field public variable:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;->studyId:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;->variable:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;->onValue:Ljava/lang/String;

    .line 61
    return-void
.end method
