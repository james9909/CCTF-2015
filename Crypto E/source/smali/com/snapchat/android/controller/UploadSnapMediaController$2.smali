.class Lcom/snapchat/android/controller/UploadSnapMediaController$2;
.super Lcom/snapchat/android/api/UploadMediaTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/controller/UploadSnapMediaController;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/AnnotatedMediabryo;

.field final synthetic b:Lcom/snapchat/android/controller/UploadSnapMediaController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/controller/UploadSnapMediaController;Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$2;->b:Lcom/snapchat/android/controller/UploadSnapMediaController;

    iput-object p3, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$2;->a:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-direct {p0, p2}, Lcom/snapchat/android/api/UploadMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/snapchat/android/api/UploadMediaTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 91
    invoke-static {}, Lcom/snapchat/android/controller/UploadSnapMediaController;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/controller/UploadSnapMediaController$2;->a:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController$2;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
