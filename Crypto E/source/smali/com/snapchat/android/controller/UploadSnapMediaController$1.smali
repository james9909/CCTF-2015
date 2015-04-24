.class Lcom/snapchat/android/controller/UploadSnapMediaController$1;
.super Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/controller/UploadSnapMediaController;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/AnnotatedMediabryo;

.field final synthetic b:Lcom/snapchat/android/controller/UploadSnapMediaController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/controller/UploadSnapMediaController;Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$1;->b:Lcom/snapchat/android/controller/UploadSnapMediaController;

    iput-object p2, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$1;->a:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-direct {p0}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$1;->b:Lcom/snapchat/android/controller/UploadSnapMediaController;

    iget-object v1, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$1;->a:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/controller/UploadSnapMediaController;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 45
    invoke-static {}, Lcom/snapchat/android/controller/UploadSnapMediaController;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$1;->a:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-super {p0, p1}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->onPostExecute(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController$1;->a(Ljava/lang/Void;)V

    return-void
.end method
