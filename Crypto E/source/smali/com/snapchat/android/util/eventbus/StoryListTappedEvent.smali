.class public Lcom/snapchat/android/util/eventbus/StoryListTappedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/fragments/stories/StoriesListItem;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/StoryListTappedEvent;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 11
    return-void
.end method
