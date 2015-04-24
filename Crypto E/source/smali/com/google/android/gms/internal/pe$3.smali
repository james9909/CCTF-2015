.class final Lcom/google/android/gms/internal/pe$3;
.super Lcom/google/android/gms/internal/pc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/pe;->a(Landroid/content/Context;Lcom/google/android/gms/internal/pd;Lcom/google/android/gms/internal/pc;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aub:Landroid/net/Uri;

.field final synthetic aud:Lcom/google/android/gms/internal/pc;

.field final synthetic no:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/pc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pe$3;->no:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/pe$3;->aub:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/pe$3;->aud:Lcom/google/android/gms/internal/pc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/pc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pe$3;->no:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/pe$3;->aub:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/pe;->b(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pe$3;->aud:Lcom/google/android/gms/internal/pc;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/pc;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method
