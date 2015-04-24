.class Lcom/snapchat/android/fragments/chat/ChatFragment$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$22;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$22;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$22;)V
    .locals 0
    .parameter

    .prologue
    .line 2277
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$22$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$22$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$22;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$22;->a:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    .line 2281
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$22$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$22;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$22;->b:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->I(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CashSwiperView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CashSwiperView;->b()V

    .line 2282
    return-void
.end method
