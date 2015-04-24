.class public Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/PostStorySnapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostStorySnapJsonResponse"
.end annotation


# instance fields
.field public story:Lcom/snapchat/android/model/StorySnap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api/PostStorySnapTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api/PostStorySnapTask;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapJsonResponse;->this$0:Lcom/snapchat/android/api/PostStorySnapTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
