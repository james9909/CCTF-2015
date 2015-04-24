.class public final Lcom/google/android/gms/internal/cy;
.super Lcom/google/android/gms/internal/df$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field private re:Lcom/google/android/gms/internal/da$a;

.field private rf:Lcom/google/android/gms/internal/cx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/df$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cx;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/da$a;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdClicked()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cx;->ag()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cx;->ah()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/da$a;->k(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLeftApplication()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cx;->ai()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdLoaded()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/da$a;->k(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cy;->re:Lcom/google/android/gms/internal/da$a;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cx;->ak()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAdOpened()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cy;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cy;->rf:Lcom/google/android/gms/internal/cx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cx;->aj()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
