.class Lcom/snapchat/android/LandingPageActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1594
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$7;->b:Lcom/snapchat/android/LandingPageActivity;

    iput-boolean p2, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->b:Lcom/snapchat/android/LandingPageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;Z)Z

    .line 1598
    iget-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$7;->b:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->q()V

    .line 1599
    :cond_0
    return-void
.end method
