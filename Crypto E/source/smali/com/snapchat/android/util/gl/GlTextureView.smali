.class public abstract Lcom/snapchat/android/util/gl/GlTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/snapchat/android/util/gl/GlTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/gl/GlTextureView;->setOpaque(Z)V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public c()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->a()V

    .line 69
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;-><init>(Lcom/snapchat/android/util/gl/GlTextureView;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->start()V

    .line 50
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    invoke-virtual {v0}, Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;->b()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/gl/GlTextureView;->a:Lcom/snapchat/android/util/gl/GlTextureView$GlRenderThread;

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method
