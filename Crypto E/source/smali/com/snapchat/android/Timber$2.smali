.class final Lcom/snapchat/android/Timber$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/TimberTimingLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/TimberTimingLogger;


# direct methods
.method constructor <init>(Lcom/snapchat/android/TimberTimingLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/snapchat/android/Timber$2;->a:Lcom/snapchat/android/TimberTimingLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/Timber$2;->a:Lcom/snapchat/android/TimberTimingLogger;

    invoke-virtual {v0}, Lcom/snapchat/android/TimberTimingLogger;->b()V

    .line 179
    return-void
.end method
