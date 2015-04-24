.class public Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/StoryGroup;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;->a:Lcom/snapchat/android/model/StoryGroup;

    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/StoryGroup;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;->a:Lcom/snapchat/android/model/StoryGroup;

    return-object v0
.end method
