.class public Lnet/hockeyapp/android/objects/FeedbackResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lnet/hockeyapp/android/objects/Feedback;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public a(Lnet/hockeyapp/android/objects/Feedback;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->b:Lnet/hockeyapp/android/objects/Feedback;

    .line 31
    return-void
.end method

.method public b()Lnet/hockeyapp/android/objects/Feedback;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->b:Lnet/hockeyapp/android/objects/Feedback;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->c:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/hockeyapp/android/objects/FeedbackResponse;->c:Ljava/lang/String;

    return-object v0
.end method
