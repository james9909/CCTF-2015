.class public final Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;
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
        "Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;",
        ">;"
    }
.end annotation


# instance fields
.field private gson:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/GsonWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/framework/AbstractFieldMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.snapchat.android.api2.framework.FormEncodedJsonFieldMapper"

    const-string v1, "members/com.snapchat.android.api2.framework.FormEncodedJsonFieldMapper"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;
    .locals 2

    .prologue
    .line 59
    new-instance v1, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    iget-object v0, p0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->gson:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/GsonWrapper;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;-><init>(Lcom/snapchat/android/util/GsonWrapper;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->a(Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;)V

    .line 61
    return-object v1
.end method

.method public a(Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 39
    const-string v0, "com.snapchat.android.util.GsonWrapper"

    const-class v1, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->gson:Ldagger/internal/Binding;

    .line 40
    const-string v1, "members/com.snapchat.android.api2.framework.AbstractFieldMapper"

    const-class v2, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->a(Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;)V

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
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->gson:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper$$InjectAdapter;->a()Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    move-result-object v0

    return-object v0
.end method
