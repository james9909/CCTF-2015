.class public final Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/api2/framework/EntityFactory;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/api2/framework/EntityFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private formEncodedJsonFieldMapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;",
            ">;"
        }
    .end annotation
.end field

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

.field private multipartEncodedFieldMapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 26
    const-string v0, "com.snapchat.android.api2.framework.EntityFactory"

    const-string v1, "members/com.snapchat.android.api2.framework.EntityFactory"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/api2/framework/EntityFactory;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/framework/EntityFactory;
    .locals 4

    .prologue
    .line 58
    new-instance v3, Lcom/snapchat/android/api2/framework/EntityFactory;

    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->formEncodedJsonFieldMapper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;

    iget-object v1, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->multipartEncodedFieldMapper:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;

    iget-object v2, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->gson:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/util/GsonWrapper;

    invoke-direct {v3, v0, v1, v2}, Lcom/snapchat/android/api2/framework/EntityFactory;-><init>(Lcom/snapchat/android/api2/framework/FormEncodedJsonFieldMapper;Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;Lcom/snapchat/android/util/GsonWrapper;)V

    .line 59
    return-object v3
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    const-string v0, "com.snapchat.android.api2.framework.FormEncodedJsonFieldMapper"

    const-class v1, Lcom/snapchat/android/api2/framework/EntityFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->formEncodedJsonFieldMapper:Ldagger/internal/Binding;

    .line 37
    const-string v0, "com.snapchat.android.api2.framework.MultipartEncodedFieldMapper"

    const-class v1, Lcom/snapchat/android/api2/framework/EntityFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->multipartEncodedFieldMapper:Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.snapchat.android.util.GsonWrapper"

    const-class v1, Lcom/snapchat/android/api2/framework/EntityFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->gson:Ldagger/internal/Binding;

    .line 39
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
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->formEncodedJsonFieldMapper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->multipartEncodedFieldMapper:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->gson:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/snapchat/android/api2/framework/EntityFactory$$InjectAdapter;->a()Lcom/snapchat/android/api2/framework/EntityFactory;

    move-result-object v0

    return-object v0
.end method
