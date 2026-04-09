# git-critique

Run `git critique` to see churn hotspots, bus factor, bug clusters, and crisis patterns.

## Install

```bash
git clone https://github.com/zdk/git-critique.git
cd git-critique
./install.sh
```

## Usage

```bash
cd your-git-repo
git critique
```

## Example output:

```
Reviewing the last year of git history...

These files keep changing:
  1104  MAINTAINERS
   186  kernel/bpf/verifier.c
   174  fs/namespace.c
   162  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
   159  fs/f2fs/f2fs.h
   158  kernel/sched/ext.c
   157  fs/btrfs/inode.c
   156  drivers/block/ublk_drv.c
   139  arch/x86/kvm/x86.c
   133  drivers/net/wireless/ath/ath12k/mac.c

Who's behind this:
  10399  Christoph Hellwig
  8481  Mauro Carvalho Chehab
  8413  Takashi Iwai
  8072  Al Viro
  7884  Krzysztof Kozlowski
  7040  Arnd Bergmann
  6883  Thomas Gleixner
  6857  Geert Uytterhoeven
  6641  Johannes Berg
  6439  Chris Wilson

Where the bugs live:
   115  MAINTAINERS
    83  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
    76  arch/x86/kernel/cpu/bugs.c
    71  kernel/bpf/verifier.c
    70  drivers/gpu/drm/xe/xe_vm.c
    69  sound/hda/codecs/realtek/alc269.c
    64  kernel/sched/ext.c
    62  mm/slub.c
    58  drivers/net/wireless/ath/ath12k/mac.c
    57  fs/btrfs/inode.c

How active is this project:
  2013-11:  █ 1
  2016-09:  █ 1
  2020-12:  █ 1
  2021-03:  ██ 2
  2021-08:  █ 1
  2021-10:  █ 1
  2021-12:  ██ 2
  2022-07:  █ 1
  2022-08:  ██ 2
  2022-09:  ██ 2
  2022-11:  █ 1
  2023-01:  █ 1
  2023-02:  ██████ 6
  2023-03:  ███ 3
  2023-05:  ████ 4
  2023-08:  ██ 2
  2023-09:  ███████ 7
  2023-10:  ████████ 8
  2023-11:  ██ 2
  2023-12:  █████ 5
  2024-01:  ██████ 6
  2024-02:  ████████████████████████████ 28
  2024-03:  ███████ 7
  2024-04:  █████ 5
  2024-05:  ███████████████████████████████ 31

Any fires lately:
  2026-04-07 Merge tag 'mm-hotfixes-stable-2026-04-06-15-27' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
  2026-03-30 net/mlx5: Fix switchdev mode rollback in case of failure
  2026-03-26 crypto: algif_aead - Revert to operating out-of-place
  2026-03-24 ASoC: ep93xx: Fix unchecked clk_prepare_enable() and add rollback on failure
  2026-03-28 Merge tag 'mm-hotfixes-stable-2026-03-28-10-45' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
  2026-03-26 Revert "ALSA: hda/intel: Add MSI X870E Tomahawk to denylist"
  2026-03-26 Revert "drm: Fix use-after-free on framebuffers and property blobs when calling drm_dev_unplug"
  2026-03-24 Merge tag 'mm-hotfixes-stable-2026-03-23-17-56' of git://git.kernel.org/pub/scm/linux/kernel/git/akpm/mm
  2026-03-06 tracing: Revert "tracing: Remove pid in task_rename tracing output"
  2026-02-21 Revert "arm64: dts: imx8mq-librem5: Set the DVS voltages lower"
  2026-02-19 Revert "ARM: dts: imx: move nand related property under nand@0"
  2026-03-13 clsact: Fix use-after-free in init/destroy rollback asymmetry
```
