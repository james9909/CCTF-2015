.class Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$4;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$4;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c()Z

    .line 493
    return-void
.end method
