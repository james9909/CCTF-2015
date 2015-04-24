.class Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    iput p2, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    invoke-static {v0}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 111
    :sswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 117
    :sswitch_3
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 123
    :sswitch_4
    iget-object v0, p0, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader$1;->b:Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/DancingGhostPtrHeader;->a(I)V

    goto :goto_0

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x7f020089 -> :sswitch_0
        0x7f0200fc -> :sswitch_4
        0x7f020151 -> :sswitch_3
        0x7f0201b1 -> :sswitch_2
        0x7f0201fd -> :sswitch_1
    .end sparse-switch
.end method
