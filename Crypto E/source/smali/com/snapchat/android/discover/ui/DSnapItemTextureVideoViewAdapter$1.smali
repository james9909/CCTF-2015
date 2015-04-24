.class Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->a()V

    .line 206
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-interface {v0, p1}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;Z)Z

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapItemTextureVideoViewAdapter;)V

    .line 211
    return-void
.end method
