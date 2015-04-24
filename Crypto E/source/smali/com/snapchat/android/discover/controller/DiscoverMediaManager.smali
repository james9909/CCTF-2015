.class public Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/controller/DiscoverMediaManager$1;
    }
.end annotation


# static fields
.field private static final a:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;


# instance fields
.field private final b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    invoke-direct {v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;-><init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Ljava/util/List;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Ljava/util/List;Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;",
            ">;",
            "Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    invoke-direct {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    .line 55
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 57
    iput-object p3, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 58
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    return-object v0
.end method

.method private static f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    new-instance v1, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;

    invoke-direct {v1}, Lcom/snapchat/android/discover/controller/internal/IntroVideoMediaLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v1, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;

    invoke-direct {v1}, Lcom/snapchat/android/discover/controller/internal/PublisherIconMediaLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v1, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;

    invoke-direct {v1}, Lcom/snapchat/android/discover/controller/internal/EditionMediaLoader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 67
    invoke-interface {v0, p1}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    const-string v0, "DiscoverMediaManager"

    const-string v1, "DISCOVER-MEDIA: Retry failed media for context %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 125
    invoke-interface {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->e()Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-interface {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->b()V

    goto :goto_0

    .line 129
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->b(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 137
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    sget-object v1, Lcom/snapchat/android/discover/controller/DiscoverMediaManager$1;->a:[I

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 188
    :cond_0
    return-void

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 171
    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 175
    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->d:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v1, p1, v2}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 179
    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 80
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;->a()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    .line 89
    :goto_0
    const-string v1, "DiscoverMediaManager"

    const-string v2, "DISCOVER-MEDIA: Updating user state from %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iput-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 93
    iget-object v2, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->e:Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    invoke-interface {v0, v2}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->a(Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;)V

    goto :goto_1

    .line 87
    :cond_0
    new-instance v0, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/discover/controller/internal/DiscoverUserState;-><init>(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/DSnapPage;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c()V

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 156
    const-string v0, "DiscoverMediaManager"

    const-string v1, "DISCOVER-MEDIA: Fetching remote video urls for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->b(Ljava/lang/String;)Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;->a()V

    .line 159
    return-void
.end method

.method protected b(Ljava/lang/String;)Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;
    .locals 1
    .parameter

    .prologue
    .line 224
    new-instance v0, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;

    invoke-direct {v0, p1}, Lcom/snapchat/android/discover/api2/FetchVideoCatalogOperation;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 102
    const-string v0, "DiscoverMediaManager"

    const-string v1, "DISCOVER-MEDIA: Checking cache consistency"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 104
    invoke-interface {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->a()V

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method public b(Lcom/snapchat/android/discover/model/ChannelPage;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->f()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "DiscoverMediaManager"

    const-string v1, "DISCOVER-MEDIA: Retry failed media"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 114
    invoke-interface {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->b()V

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 208
    invoke-interface {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->c()V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;

    .line 218
    invoke-interface {v0}, Lcom/snapchat/android/discover/controller/internal/DiscoverMediaLoader;->d()V

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method
