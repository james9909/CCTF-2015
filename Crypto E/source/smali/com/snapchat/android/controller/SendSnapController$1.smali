.class Lcom/snapchat/android/controller/SendSnapController$1;
.super Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/controller/SendSnapController;->a(Lcom/snapchat/android/model/Snapbryo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Snapbryo;

.field final synthetic b:Lcom/snapchat/android/controller/SendSnapController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/model/Snapbryo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/snapchat/android/controller/SendSnapController$1;->b:Lcom/snapchat/android/controller/SendSnapController;

    iput-object p2, p0, Lcom/snapchat/android/controller/SendSnapController$1;->a:Lcom/snapchat/android/model/Snapbryo;

    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController$1;->b:Lcom/snapchat/android/controller/SendSnapController;

    iget-object v1, p0, Lcom/snapchat/android/controller/SendSnapController$1;->a:Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/controller/SendSnapController;->i(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 214
    invoke-super {p0, p1}, Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController$1;->a(Ljava/lang/Void;)V

    return-void
.end method
