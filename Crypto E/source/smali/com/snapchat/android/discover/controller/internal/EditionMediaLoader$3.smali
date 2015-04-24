.class Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DSnapRepositoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$3;->a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/DSnapPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader$3;->a:Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-static {v0, p1}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;Ljava/util/List;)V

    .line 216
    return-void
.end method
