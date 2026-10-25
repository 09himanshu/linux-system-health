# System Health Snapshot

`system_stats.sh` prints a point-in-time overview of a Linux system's health and
resource usage to the terminal.

## Project URL

[Server Stats](https://roadmap.sh/projects/server-stats)

## Requirements

- Bash
- A Linux system with `uptime`, `who`, `top`, `free`, `df`, and `ps`
- Standard text utilities: `cat`, `grep`, `tail`, `awk`, and `head`

These commands are commonly available by default. `top` and `ps` are generally
provided by the `procps` package.

## Usage

From the directory containing the script, make it executable and run it:

```bash
chmod +x system_stats.sh
./system_stats.sh
```

You can also run it without changing its permissions:

```bash
bash system_stats.sh
```

The script does not take any arguments. It prints results to standard output;
it does not save a report or make changes to the system.

## Information reported

- System uptime and load information (`uptime`)
- Operating system release details (`/etc/os-release`)
- The first logged-in user shown by `who`
- CPU usage, calculated as 100% minus the idle percentage from `top`
- Memory usage (`free -h`)
- Disk space usage for mounted filesystems (`df -h`)
- Process listings sorted by CPU and memory usage

The process listings use `head -n 5`, which includes the column header and
therefore displays up to four process rows in each list.

## Notes

- Output and command options may vary across Linux distributions.
- The script reads system-wide information and typically does not require
  elevated privileges.
- CPU, memory, disk, and process information is a snapshot taken while the
  script runs.
