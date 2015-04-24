.class public Lcom/snapchat/android/util/eventbus/RecentStoryCollectionCompletedViewingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/model/StorySnap;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StorySnap;)V
    .locals 0
    .parameter

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/RecentStoryCollectionCompletedViewingEvent;->a:Lcom/snapchat/android/model/StorySnap;

    .line 9
    return-void
.end method
