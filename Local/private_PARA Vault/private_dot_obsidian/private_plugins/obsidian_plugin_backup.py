import os

source_dir = os.path.expanduser("/Users/mbbroberg/Local/PARA Vault/.obsidian/plugins/")
home_dir = os.path.expanduser("~/obsidian/")
ignore_list = ("update-time-on-edit")


def check_hard_link(src_path, dest_path):
    try:
        src_inode = os.stat(src_path).st_ino
        dest_inode = os.stat(dest_path).st_ino
        return src_inode == dest_inode
    except OSError as e:
        print(f"Error checking hard link: {e}")
        return False

def create_hard_links(directory, ignore_list):
    for root, dirs, files in os.walk(directory):
        # Skip directories in ignore_list
        dirs[:] = [d for d in dirs if d not in ignore_list]
        for file in files:
            if file == "data.json":
                # print(f"Found data.json in {root}")
                src_path = os.path.join(root, file)
                relative_path = os.path.relpath(root, directory)
                dest_dir = os.path.join(home_dir, relative_path)
                try:
                    os.makedirs(dest_dir, exist_ok=True)
                    dest_path = os.path.join(dest_dir, file)
                    os.link(src_path, dest_path)
                    if check_hard_link(src_path, dest_path):
                        print(f"Hard link created successfully: {dest_path}")
                    else:
                        print(f"Failed to create hard link: {dest_path}")
                except OSError as e:
                    print(f"Error creating hard link: {e}")

create_hard_links(source_dir)