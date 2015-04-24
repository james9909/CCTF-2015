.class public final Lcom/snapchat/android/fragments/stories/StoriesAdapter$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesAdapter;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    const-string v1, "members/com.snapchat.android.fragments.stories.StoriesAdapter"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    iput-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 56
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 37
    const-string v0, "com.snapchat.android.util.debug.ExceptionReporter"

    const-class v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 38
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$$InjectAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)V

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method
