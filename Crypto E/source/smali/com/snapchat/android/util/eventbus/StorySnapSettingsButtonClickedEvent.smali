.class public Lcom/snapchat/android/util/eventbus/StorySnapSettingsButtonClickedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/model/StorySnapLogbook;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/StorySnapSettingsButtonClickedEvent;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 10
    return-void
.end method
