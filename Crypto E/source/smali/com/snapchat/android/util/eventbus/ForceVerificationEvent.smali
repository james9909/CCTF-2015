.class public Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/snapchat/android/api/RequestTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/api/RequestTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->b:Lcom/snapchat/android/api/RequestTask;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/api/RequestTask;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;->b:Lcom/snapchat/android/api/RequestTask;

    return-object v0
.end method
