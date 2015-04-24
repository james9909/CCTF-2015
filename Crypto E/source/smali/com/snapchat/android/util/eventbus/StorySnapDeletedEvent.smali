.class public Lcom/snapchat/android/util/eventbus/StorySnapDeletedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/snapchat/android/model/StorySnapLogbook;


# direct methods
.method public constructor <init>(ZLcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/StorySnapDeletedEvent;->a:Z

    .line 12
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/StorySnapDeletedEvent;->b:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/StorySnapDeletedEvent;->a:Z

    return v0
.end method

.method public b()Lcom/snapchat/android/model/StorySnapLogbook;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/StorySnapDeletedEvent;->b:Lcom/snapchat/android/model/StorySnapLogbook;

    return-object v0
.end method
