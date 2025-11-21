// Utility functions

fn applyTransform(value: f32, scale: f32) -> f32 {
    return value * scale + sin(value * 0.1);
}

fn normalizeValue(value: f32, min_val: f32, max_val: f32) -> f32 {
    return (value - min_val) / (max_val - min_val);
}

fn debugValue(value: f32, index: u32) -> f32 {
    return f32(index) * 0.01 + value * 0.001;
}
