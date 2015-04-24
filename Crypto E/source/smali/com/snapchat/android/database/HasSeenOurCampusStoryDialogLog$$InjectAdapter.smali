.class public final Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/database/HasSeenDialogLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "com.snapchat.android.database.HasSeenOurCampusStoryDialogLog"

    const-string v1, "members/com.snapchat.android.database.HasSeenOurCampusStoryDialogLog"

    const/4 v2, 0x1

    const-class v3, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-direct {v0}, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;->a(Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;)V

    .line 58
    return-object v0
.end method

.method public a(Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 38
    const-string v1, "members/com.snapchat.android.database.HasSeenDialogLog"

    const-class v2, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;->a(Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;)V

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
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog$$InjectAdapter;->a()Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    move-result-object v0

    return-object v0
.end method
